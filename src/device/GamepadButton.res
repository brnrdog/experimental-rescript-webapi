/**
An individual button of a gamepad or other controller, allowing access to the current state of different types of buttons available on the control device.
[See GamepadButton on MDN](https://developer.mozilla.org/docs/Web/API/GamepadButton)
*/
type t = GamepadTypes.gamepadButton = private {
  ...GamepadTypes.gamepadButton,
}
