#include "keyboard.h"

namespace flounder {
	keyboard::keyboard()
	{
		m_keyboardKeys = new int[GLFW_KEY_LAST + 1];
		m_keyboardChar = 0;

		// Sets the keyboards callbacks.
		glfwSetKeyCallback(display::get()->getWindow(), callbackKey);
		glfwSetCharCallback(display::get()->getWindow(), callbackChar);
	}

	keyboard::~keyboard()
	{
		delete m_keyboardKeys;
	}

	void keyboard::update()
	{
	}

	bool keyboard::getKey(int key)
	{
		return m_keyboardKeys[key] != GLFW_RELEASE;
	}

	int keyboard::getKeyboardChar()
	{
		return m_keyboardChar;
	}

	void callbackKey(GLFWwindow * window, int key, int scancode, int action, int mods)
	{
		// TODO: Play with mods.

		if (key < 0 || key > GLFW_KEY_LAST) {
		//	logger::get()->error("Invalid action attempted with key " + key);
		}
		else
		{
			keyboard::get()->m_keyboardKeys[key] = action;
		}
	}

	void callbackChar(GLFWwindow * window, unsigned int codepoint)
	{
		keyboard::get()->m_keyboardChar = codepoint;
	}
}
