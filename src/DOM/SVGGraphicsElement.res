include Element.Impl({type t = DOM.svgGraphicsElement})

external asSVGElement: DOM.svgGraphicsElement => DOM.svgElement = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGGraphicsElement/getBBox)
*/
@send
external getBBox: (
  DOM.svgGraphicsElement,
  ~options: DOM.svgBoundingBoxOptions=?,
) => DOM.domRect = "getBBox"

@send
external getCTM: DOM.svgGraphicsElement => DOM.domMatrix = "getCTM"

@send
external getScreenCTM: DOM.svgGraphicsElement => DOM.domMatrix = "getScreenCTM"
