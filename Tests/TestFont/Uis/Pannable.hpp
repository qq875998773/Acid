﻿#pragma once

#include <Inputs/ButtonKeyboard.hpp>
#include <Inputs/HatJoystick.hpp>
#include <Uis/UiObject.hpp>
#include <Fonts/Text.hpp>
#include <Guis/Gui.hpp>
#include <Inputs/ButtonCompound.hpp>
#include <Uis/Inputs/UiInputBoolean.hpp>
#include <Uis/Inputs/UiInputSlider.hpp>
#include <Uis/UiPanel.hpp>

using namespace acid;

namespace test {
class Pannable : public UiObject {
public:
	explicit Pannable(UiObject *parent);

	void UpdateObject() override;

private:
	ButtonKeyboard m_buttonReset;

	float m_zoom;

	UiObject m_content;
	Text m_title;
	Text m_body;

	UiPanel m_settings;
	UiInputSlider m_masterVolume;
	UiInputBoolean m_antialiasing;

	Text m_textFrameTime;
	Text m_textFps;
	Text m_textUps;
};
}
