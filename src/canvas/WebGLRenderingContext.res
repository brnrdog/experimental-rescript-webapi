/**
Provides an interface to the OpenGL ES 2.0 graphics rendering context for the drawing surface of an HTML <canvas> element.
[See WebGLRenderingContext on MDN](https://developer.mozilla.org/docs/Web/API/WebGLRenderingContext)
*/
type t = CanvasTypes.webGLRenderingContext = private {
  ...CanvasTypes.webGLRenderingContext,
}
