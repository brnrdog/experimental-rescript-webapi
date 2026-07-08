/**
A minimal document object that has no parent. It is used as a lightweight version of Document that stores a segment of a document structure comprised of nodes just like a standard document. The key difference is that because the document fragment isn't part of the active document tree structure, changes made to the fragment don't affect the document, cause reflow, or incur any performance impact that can occur when changes are made.
[See DocumentFragment on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  // Base properties from Node
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
  ownerDocument: Null.t<DOM.document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<Node.t>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<HTML.htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: DOM.nodeList<Node.t>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<Node.t>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<Node.t>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<Node.t>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<Node.t>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<string>,
  // End base properties from Node

  /**
    Returns the child elements.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/children)
    */
  children: HTMLCollection.t<Element.t>,
  /**
    Returns the first child that is an element, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/firstElementChild)
    */
  firstElementChild: Null.t<Element.t>,
  /**
    Returns the last child that is an element, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/lastElementChild)
    */
  lastElementChild: Null.t<Element.t>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/childElementCount)
    */
  childElementCount: int,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragmentFragment)
*/
@new
external make: unit => t = "DocumentFragment"

module Impl = (
  T: {
    type t
  },
) => {
  include Node.Impl({type t = T.t})

  external asDocumentFragment: T.t => t = "%identity"

  /**
Inserts nodes after the last child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment/append)
*/
  @send
  external append: (T.t, Node.t) => unit = "append"

  /**
Inserts nodes after the last child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment/append)
*/
  @send
  external append2: (T.t, string) => unit = "append"

  /**
Returns the first element within node's descendants whose ID is elementId.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment/getElementById)
*/
  @send
  external getElementById: (T.t, string) => null<Element.t> = "getElementById"

  /**
Inserts nodes before the first child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment/prepend)
*/
  @send
  external prepend: (T.t, Node.t) => unit = "prepend"

  /**
Inserts nodes before the first child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment/prepend)
*/
  @send
  external prepend2: (T.t, string) => unit = "prepend"

  /**
Returns the first element that is a descendant of node that matches selectors.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment/querySelector)
*/
  @send
  external querySelector: (T.t, string) => Null.t<Element.t> = "querySelector"

  /**
Returns all element descendants of node that match selectors.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment/querySelectorAll)
*/
  @send
  external querySelectorAll: (T.t, string) => Node.tList<Element.t> =
    "querySelectorAll"

  /**
Replace all children of node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment/replaceChildren)
*/
  @send
  external replaceChildren: (T.t, Node.t) => unit = "replaceChildren"

  /**
Replace all children of node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DocumentFragment/replaceChildren)
*/
  @send
  external replaceChildren2: (T.t, string) => unit = "replaceChildren"
}

include Impl({type t = t})
