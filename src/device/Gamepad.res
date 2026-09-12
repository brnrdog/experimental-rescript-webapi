/**
This WebApiGamepad API interface defines an individual gamepad or other controller, allowing access to information such as button presses, axis positions, and id.
[See WebApiGamepad on MDN](https://developer.mozilla.org/docs/Web/API/Gamepad)
*/
type t = GamepadTypes.gamepad = private {
  ...GamepadTypes.gamepad,
}
