/**
The dimensions of a piece of text in the canvas, as created by the CanvasRenderingContext2D.measureText() method.
[See TextMetrics on MDN](https://developer.mozilla.org/docs/Web/API/TextMetrics)
*/
type t = CanvasTypes.textMetrics = private {
  ...CanvasTypes.textMetrics,
}
