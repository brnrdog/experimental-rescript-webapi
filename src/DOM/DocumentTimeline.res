/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentTimeline)
*/
@new
external make: (~options: DOM.documentTimelineOptions=?) => DOM.documentTimeline =
  "DocumentTimeline"

external asAnimationTimeline: DOM.documentTimeline => DOM.animationTimeline = "%identity"
