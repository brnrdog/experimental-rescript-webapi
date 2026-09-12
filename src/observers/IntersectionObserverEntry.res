/**
This Intersection Observer API interface describes the intersection between the target element and its root container at a specific moment of transition.
[See IntersectionObserverEntry on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserverEntry)
*/
type t = IntersectionObserverTypes.intersectionObserverEntry = private {
  ...IntersectionObserverTypes.intersectionObserverEntry,
}
