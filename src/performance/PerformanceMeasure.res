/**
PerformanceMeasure is an abstract interface for PerformanceEntry objects with an entryType of "measure". Entries of this type are created by calling performance.measure() to add a named DOMHighResTimeStamp (the measure) between two marks to the browser's performance timeline.
[See PerformanceMeasure on MDN](https://developer.mozilla.org/docs/Web/API/PerformanceMeasure)
*/
type t = PerformanceTypes.performanceMeasure = private {
  ...PerformanceTypes.performanceMeasure,
}
