/**
A collection of HTML form control elements.
[See HTMLFormControlsCollection on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFormControlsCollection)
*/
type t = private {
  // Base properties from HTMLCollection
  /**
    Sets or retrieves the number of objects in a collection.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCollection/length)
    */
  length: int,
  // End base properties from HTMLCollection
}

external asHTMLCollection: t => HTMLCollection.t<Element.t> = "%identity"

/**
Retrieves an object from various collections.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCollection/item)
*/
@send
external item: (t, int) => Element.t = "item"

/**
Retrieves a select object or an object from an options collection.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCollection/namedItem)
*/
@send
external namedItem: (t, string) => Element.t = "namedItem"
