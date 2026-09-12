/**
Represents an individual DOM mutation.
[See MutationRecord on MDN](https://developer.mozilla.org/docs/Web/API/MutationRecord)
*/
type t = MutationObserver.mutationRecord = private {
  ...MutationObserver.mutationRecord,
}
