﻿#include "UiObject.hpp"

#include "Graphics/Graphics.hpp"
#include "Maths/Visual/DriverConstant.hpp"
#include "Uis.hpp"

namespace acid
{
UiObject::UiObject(UiObject *parent, const UiTransform &transform) :
	m_parent(parent),
	m_enabled(true),
	m_transform(transform),
	m_alphaDriver(std::make_unique<DriverConstant<float>>(1.0f)),
	m_alpha(1.0f),
	m_scaleDriver(std::make_unique<DriverConstant<Vector2f>>(Vector2f(1.0f))),
	m_scale(1.0f),
	m_screenAlpha(1.0f),
	m_screenScale(1.0f),
	m_selected(false)
{
	if (m_parent != nullptr)
	{
		m_parent->AddChild(this);
	}
}

UiObject::~UiObject()
{
	if (m_parent != nullptr)
	{
		m_parent->RemoveChild(this);
	}

	for (auto &child : m_children)
	{
		child->m_parent = nullptr;
	}
}

void UiObject::Update(const Matrix4 &viewMatrix, std::vector<UiObject *> &list)
{
	bool selected = IsEnabled() && Mouse::Get()->IsWindowSelected() && Window::Get()->IsFocused();

	if (selected)
	{
		auto distance = Mouse::Get()->GetPosition() - m_screenTransform.GetPosition();
		selected = distance.m_x >= 0.0f && distance.m_y >= 0.0f && distance.m_x <= m_screenTransform.GetSize().m_x && distance.m_y <= m_screenTransform.GetSize().m_y;
	}

	if (selected != m_selected)
	{
		m_selected = selected;
		m_onSelected(m_selected);
	}

	if (!m_enabled)
	{
		return;
	}

	if (m_selected)
	{
		for (auto button : EnumIterator<MouseButton>())
		{
			if (Uis::Get()->WasDown(button))
			{
				m_onClick(button);
			}
		}
	}

	// Alpha and scale updates.
	m_alpha = m_alphaDriver->Update(Engine::Get()->GetDelta());
	m_scale = m_scaleDriver->Update(Engine::Get()->GetDelta());

	UpdateObject();

	// Transform updates.
	m_screenAlpha = m_alpha;
	m_screenScale = m_scale;
	m_screenTransform = m_transform;
	m_screenTransform.SetAnchor(UiAnchor::LeftTop);

	if (m_parent != nullptr)
	{
		m_screenAlpha *= m_parent->m_screenAlpha;
		m_screenScale *= m_parent->m_screenScale;

		m_screenTransform.m_size *= m_screenScale;
		m_screenTransform.m_position *= m_screenScale;

		m_screenTransform.m_position += m_parent->m_screenTransform.m_size * m_transform.GetAnchor();
		m_screenTransform.m_position += m_parent->m_screenTransform.m_position;
	}
	else
	{
		m_screenTransform.m_size *= m_screenScale;
	}

	m_screenTransform.m_position -= m_screenTransform.m_size * m_transform.GetAnchor();

	auto modelMatrix = Matrix4::TransformationMatrix(Vector3f(m_screenTransform.m_position, 0.01f * m_screenTransform.m_depth), Vector3f(), Vector3f(m_screenTransform.m_size));
	m_modelView = viewMatrix * modelMatrix;

	// Adds this object to the list if it is visible.
	if (m_screenAlpha > 0.0f)
	{
		list.emplace_back(this);
	}

	// Update all children objects.
	for (auto &child : m_children)
	{
		child->Update(viewMatrix, list);
	}
}

void UiObject::UpdateObject()
{
}

void UiObject::SetParent(UiObject *parent)
{
	if (m_parent != nullptr)
	{
		m_parent->RemoveChild(this);
	}

	if (parent != nullptr)
	{
		parent->AddChild(this);
	}

	m_parent = parent;
}

void UiObject::AddChild(UiObject *child)
{
	m_children.emplace_back(child);
}

void UiObject::RemoveChild(UiObject *child)
{
	m_children.erase(std::remove(m_children.begin(), m_children.end(), child), m_children.end());
}

bool UiObject::IsEnabled() const
{
	// TODO: m_enabled getter, update m_enabled on object update.
	if (m_parent != nullptr)
	{
		return m_enabled && m_parent->IsEnabled();
	}

	return m_enabled;
}

void UiObject::CancelEvent(const MouseButton &button) const
{
	Uis::Get()->CancelWasEvent(button);
}
}
