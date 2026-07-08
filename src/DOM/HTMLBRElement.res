/**
A HTML line break element (<br>). It inherits from HTMLElement.
[See HTMLBRElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLBRElement)
*/
type t = private {
  ...HTMLElement.t,
}

include HTMLElement.Impl({type t = t})

