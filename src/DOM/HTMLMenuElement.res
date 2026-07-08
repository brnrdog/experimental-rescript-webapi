/**
[See HTMLMenuElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMenuElement)
*/
type t = private {
  ...HTMLElement.t,
}

include HTMLElement.Impl({type t = t})

