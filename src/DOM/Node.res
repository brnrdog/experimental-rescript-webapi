
/**
Node is an interface from which a number of WebApiDOM API object types inherit. It allows those types to be treated similarly; for example, inheriting the same set of methods, or being tested in the same way.
[See Node on MDN](https://developer.mozilla.org/docs/Web/API/Node)
TODO: mark as private once mutating fields of private records is allowed
*/
type rec t = {
  ...eventTarget,
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: string,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: string,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeList<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<string>,
}

module Impl = (
  T: {
    type t
  },
) => {
  include EventTarget.Impl({type t = T.t})

  external asNode: T.t => DomTypes.node = "%identity"

  /**
Returns node's root.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/getRootNode)
*/
  @send
  external getRootNode: (T.t, ~options: DomTypes.getRootNodeOptions=?) => DomTypes.node =
    "getRootNode"

  /**
Returns whether node has children.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/hasChildNodes)
*/
  @send
  external hasChildNodes: T.t => bool = "hasChildNodes"

  /**
Removes empty exclusive Text nodes and concatenates the data of remaining contiguous exclusive Text nodes into the first of their nodes.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/normalize)
*/
  @send
  external normalize: T.t => unit = "normalize"

  /**
Returns a copy of node. If deep is true, the copy also includes the node's descendants.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/cloneNode)
*/
  @send
  external cloneNode: (T.t, ~deep: bool=?) => T.t = "cloneNode"

  /**
Returns whether node and otherNode have the same properties.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isEqualNode)
*/
  @send
  external isEqualNode: (T.t, DomTypes.node) => bool = "isEqualNode"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isSameNode)
*/
  @send
  external isSameNode: (T.t, DomTypes.node) => bool = "isSameNode"

  /**
Returns a bitmask indicating the position of other relative to node.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/compareDocumentPosition)
*/
  @send
  external compareDocumentPosition: (T.t, DomTypes.node) => int = "compareDocumentPosition"

  /**
Returns true if other is an inclusive descendant of node, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/contains)
*/
  @send
  external contains: (T.t, DomTypes.node) => bool = "contains"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lookupPrefix)
*/
  @send
  external lookupPrefix: (T.t, string) => string = "lookupPrefix"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lookupNamespaceURI)
*/
  @send
  external lookupNamespaceURI: (T.t, string) => string = "lookupNamespaceURI"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isDefaultNamespace)
*/
  @send
  external isDefaultNamespace: (T.t, string) => bool = "isDefaultNamespace"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/insertBefore)
*/
  @send
  external insertBefore: (T.t, 't, ~child: DomTypes.node) => 't = "insertBefore"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/appendChild)
*/
  @send
  external appendChild: (T.t, 't) => 't = "appendChild"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/replaceChild)
*/
  @send
  external replaceChild: (T.t, ~node: DomTypes.node, 't) => 't = "replaceChild"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/removeChild)
*/
  @send
  external removeChild: (T.t, 't) => 't = "removeChild"
}

include Impl({type t = DomTypes.node})
