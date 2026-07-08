
type shadowRootMode =
  | @as("closed") Closed
  | @as("open") Open

  type slotAssignmentMode =
    | @as("manual") Manual
    | @as("named") Named
  
type shadowRootInit = {
  mutable mode: shadowRootMode,
  mutable delegatesFocus?: bool,
  mutable slotAssignment?: slotAssignmentMode,
  mutable serializable?: bool,
}

/**
[See ShadowRoot on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  // Base properties from DocumentFragment
  // End base properties from DocumentFragment

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
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/mode)
    */
  mode: shadowRootMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/delegatesFocus)
    */
  delegatesFocus: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/slotAssignment)
    */
  slotAssignment: slotAssignmentMode,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/clonable)
    */
  clonable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/serializable)
    */
  serializable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/host)
    */
  host: Element.t,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/innerHTML)
    */
  mutable innerHTML: string,
  /**
    Retrieves a collection of styleSheet objects representing the style sheets that correspond to each instance of a link or style object in the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/styleSheets)
    */
  styleSheets: DOM.styleSheetList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/adoptedStyleSheets)
    */
  mutable adoptedStyleSheets: array<DOM.cssStyleSheet>,
  /**
    Returns document's fullscreen element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/fullscreenElement)
    */
  fullscreenElement: Null.t<Element.t>,
  /**
    Returns the deepest element in the document through which or to which key events are being routed. This is, roughly speaking, the focused element in the document.

For the purposes of this API, when a child browsing context is focused, its container is focused in the parent browsing context. For example, if the user moves the focus to a text control in an iframe, the iframe is the element returned by the activeElement API in the iframe's node document.

Similarly, when the focused element is in a different node tree than documentOrShadowRoot, the element returned will be the host that's located in the same node tree as documentOrShadowRoot if documentOrShadowRoot is a shadow-including inclusive ancestor of the focused element, and null if not.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/activeElement)
    */
  activeElement: Null.t<Element.t>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/pictureInPictureElement)
    */
  pictureInPictureElement: Null.t<Element.t>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/pointerLockElement)
    */
  pointerLockElement: Null.t<Element.t>,
}

type getHTMLOptions = {
  mutable serializableShadowRoots?: bool,
  mutable shadowRoots?: array<t>,
}


include DocumentFragment.Impl({type t = DOM.shadowRoot})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/getAnimations)
*/
@send
external getAnimations: DOM.shadowRoot => array<Animation.t> = "getAnimations"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/setHTMLUnsafe)
*/
@send
external setHTMLUnsafe: (DOM.shadowRoot, string) => unit = "setHTMLUnsafe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/getHTML)
*/
@send
external getHTML: (DOM.shadowRoot, ~options: getHTMLOptions=?) => string = "getHTML"
