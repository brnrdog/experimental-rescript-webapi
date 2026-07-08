/**
[See HTMLMenuElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMenuElement)
*/
type t = private {
  ...HTML.htmlElement,
}

include HTMLElement.Impl({type t = t})

