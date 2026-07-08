/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/item)
*/
@send
external item: (t, int) => Attr.t = "item"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/getNamedItem)
*/
@send
external getNamedItem: (t, string) => Attr.t = "getNamedItem"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/getNamedItemNS)
*/
@send
external getNamedItemNS: (
  t,
  ~namespace: string,
  ~localName: string,
) => Attr.t = "getNamedItemNS"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/setNamedItem)
*/
@send
external setNamedItem: (t, Attr.t) => Attr.t = "setNamedItem"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/setNamedItemNS)
*/
@send
external setNamedItemNS: (t, Attr.t) => Attr.t = "setNamedItemNS"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/removeNamedItem)
*/
@send
external removeNamedItem: (t, string) => Attr.t = "removeNamedItem"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NamedNodeMap/removeNamedItemNS)
*/
@send
external removeNamedItemNS: (
  t,
  ~namespace: string,
  ~localName: string,
) => Attr.t = "removeNamedItemNS"
