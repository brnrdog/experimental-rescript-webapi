
/**
Element is the most general base class from which all objects in a Document inherit. It only has methods and properties common to all kinds of elements. More specific classes inherit from Element.
[See Element on MDN](https://developer.mozilla.org/docs/Web/API/Element)
TODO: mark as private once mutating fields of private records is allowed
*/
type rec element = {
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
  // End base properties from Node

  /**
    Returns the namespace.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/namespaceURI)
    */
  namespaceURI: Null.t<string>,
  /**
    Returns the namespace prefix.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/prefix)
    */
  prefix: Null.t<string>,
  /**
    Returns the local name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/localName)
    */
  localName: string,
  /**
    Returns the HTML-uppercased qualified name.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/tagName)
    */
  tagName: string,
  /**
    Returns the value of element's id content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/id)
    */
  mutable id: string,
  /**
    Returns the value of element's class content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/className)
    */
  mutable className: string,
  /**
    Allows for manipulation of element's class content attribute as a set of whitespace-separated tokens through a DOMTokenList object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/classList)
    */
  classList: domTokenList,
  /**
    Returns the value of element's slot content attribute. Can be set to change it.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/slot)
    */
  mutable slot: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attributes)
    */
  attributes: namedNodeMap,
  /**
    Returns element's shadow root, if any, and if shadow root's mode is "open", and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/shadowRoot)
    */
  shadowRoot: Null.t<shadowRoot>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/part)
    */
  part: domTokenList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTop)
    */
  mutable scrollTop: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollLeft)
    */
  mutable scrollLeft: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollWidth)
    */
  scrollWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollHeight)
    */
  scrollHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientTop)
    */
  clientTop: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientLeft)
    */
  clientLeft: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientWidth)
    */
  clientWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/clientHeight)
    */
  clientHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/currentCSSZoom)
    */
  currentCSSZoom: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/innerHTML)
    */
  mutable innerHTML: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/outerHTML)
    */
  mutable outerHTML: string,
  /**
    Returns the child elements.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/children)
    */
  children: htmlCollection<element>,
  /**
    Returns the first child that is an element, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/firstElementChild)
    */
  firstElementChild: Null.t<element>,
  /**
    Returns the last child that is an element, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/lastElementChild)
    */
  lastElementChild: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/childElementCount)
    */
  childElementCount: int,
  /**
    Returns the first preceding sibling that is an element, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/previousElementSibling)
    */
  previousElementSibling: Null.t<element>,
  /**
    Returns the first following sibling that is an element, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/nextElementSibling)
    */
  nextElementSibling: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/assignedSlot)
    */
  assignedSlot: Null.t<htmlSlotElement>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaAtomic)
    */
  mutable ariaAtomic: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaAutoComplete)
    */
  mutable ariaAutoComplete: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaBrailleLabel)
    */
  mutable ariaBrailleLabel: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaBrailleRoleDescription)
    */
  mutable ariaBrailleRoleDescription: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaBusy)
    */
  mutable ariaBusy: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaChecked)
    */
  mutable ariaChecked: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaColCount)
    */
  mutable ariaColCount: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaColIndex)
    */
  mutable ariaColIndex: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaColIndexText)
    */
  mutable ariaColIndexText: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaColSpan)
    */
  mutable ariaColSpan: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaCurrent)
    */
  mutable ariaCurrent: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaDescription)
    */
  mutable ariaDescription: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaDisabled)
    */
  mutable ariaDisabled: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaExpanded)
    */
  mutable ariaExpanded: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaHasPopup)
    */
  mutable ariaHasPopup: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaHidden)
    */
  mutable ariaHidden: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaKeyShortcuts)
    */
  mutable ariaKeyShortcuts: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaLabel)
    */
  mutable ariaLabel: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaLevel)
    */
  mutable ariaLevel: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaLive)
    */
  mutable ariaLive: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaModal)
    */
  mutable ariaModal: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaMultiLine)
    */
  mutable ariaMultiLine: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaMultiSelectable)
    */
  mutable ariaMultiSelectable: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaOrientation)
    */
  mutable ariaOrientation: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaPlaceholder)
    */
  mutable ariaPlaceholder: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaPosInSet)
    */
  mutable ariaPosInSet: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaPressed)
    */
  mutable ariaPressed: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaReadOnly)
    */
  mutable ariaReadOnly: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaRequired)
    */
  mutable ariaRequired: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaRoleDescription)
    */
  mutable ariaRoleDescription: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaRowCount)
    */
  mutable ariaRowCount: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaRowIndex)
    */
  mutable ariaRowIndex: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaRowIndexText)
    */
  mutable ariaRowIndexText: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaRowSpan)
    */
  mutable ariaRowSpan: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaSelected)
    */
  mutable ariaSelected: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaSetSize)
    */
  mutable ariaSetSize: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaSort)
    */
  mutable ariaSort: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaValueMax)
    */
  mutable ariaValueMax: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaValueMin)
    */
  mutable ariaValueMin: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaValueNow)
    */
  mutable ariaValueNow: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/ariaValueText)
    */
  mutable ariaValueText: Null.t<string>,
}


module Impl = (
  T: {
    type t
  },
) => {
  include Node.Impl({type t = T.t})

  external asElement: T.t => DOM.element = "%identity"

  /**
Inserts nodes just after node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/after)
*/
  @send
  external after: (T.t, DOM.node) => unit = "after"

  /**
Inserts nodes just after node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/after)
*/
  @send
  external after2: (T.t, string) => unit = "after"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/animate)
*/
  @send
  external animate: (T.t, ~keyframes: unknown, ~options: float=?) => Animation.t = "animate"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/animate)
*/
  @send
  external animate2: (
    T.t,
    ~keyframes: unknown,
    ~options: Animation.keyframeAnimationOptions=?,
  ) => Animation.t = "animate"

  /**
Inserts nodes after the last child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/append)
*/
  @send
  external append: (T.t, DOM.node) => unit = "append"

  /**
Inserts nodes after the last child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/append)
*/
  @send
  external append2: (T.t, string) => unit = "append"

  /**
Creates a shadow root for element and returns it.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/attachShadow)
*/
  @send
  external attachShadow: (T.t, ShadowRoot.shadowRootInit) => ShadowRoot.t = "attachShadow"

  /**
Inserts nodes just before node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/before)
*/
  @send
  external before: (T.t, DOM.node) => unit = "before"

  /**
Inserts nodes just before node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/before)
*/
  @send
  external before2: (T.t, string) => unit = "before"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/checkVisibility)
*/
  @send
  external checkVisibility: (T.t, ~options: DOM.checkVisibilityOptions=?) => bool =
    "checkVisibility"

  /**
Returns the first (starting at element) inclusive ancestor that matches selectors, and null otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/closest)
*/
  @send
  external closest: (T.t, string) => 'e = "closest"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/computedStyleMap)
*/
  @send
  external computedStyleMap: T.t => DOM.stylePropertyMapReadOnly = "computedStyleMap"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getAnimations)
*/
  @send
  external getAnimations: (T.t, ~options: DOM.getAnimationsOptions=?) => array<Animation.t> =
    "getAnimations"

  /**
Returns element's first attribute whose qualified name is qualifiedName, and null if there is no such attribute otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getAttribute)
*/
  @send
  external getAttribute: (T.t, string) => null<string> = "getAttribute"

  /**
Returns the qualified names of all element's attributes. Can contain duplicates.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getAttributeNames)
*/
  @send
  external getAttributeNames: T.t => array<string> = "getAttributeNames"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getAttributeNode)
*/
  @send
  external getAttributeNode: (T.t, string) => DOM.attr = "getAttributeNode"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getAttributeNodeNS)
*/
  @send
  external getAttributeNodeNS: (T.t, ~namespace: string, ~localName: string) => DOM.attr =
    "getAttributeNodeNS"

  /**
Returns element's attribute whose namespace is namespace and local name is localName, and null if there is no such attribute otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getAttributeNS)
*/
  @send
  external getAttributeNS: (T.t, ~namespace: string, ~localName: string) => string =
    "getAttributeNS"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getBoundingClientRect)
*/
  @send
  external getBoundingClientRect: T.t => DOM.domRect = "getBoundingClientRect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getClientRects)
*/
  @send
  external getClientRects: T.t => DOM.domRectList = "getClientRects"

  /**
Returns a HTMLCollection of the elements in the object on which the method was invoked (a document or an element) that have all the classes given by classNames. The classNames argument is interpreted as a space-separated list of classes.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getElementsByClassName)
*/
  @send
  external getElementsByClassName: (T.t, string) => DOM.htmlCollection<DOM.element> =
    "getElementsByClassName"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getElementsByTagName)
*/
  @send
  external getElementsByTagName: (T.t, string) => DOM.htmlCollection<DOM.element> =
    "getElementsByTagName"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getElementsByTagNameNS)
*/
  @send
  external getElementsByTagNameNS: (
    DOM.element,
    ~namespace: string,
    ~localName: string,
  ) => DOM.htmlCollection<DOM.element> = "getElementsByTagNameNS"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/getHTML)
*/
  @send
  external getHTML: (T.t, ~options: DOM.getHTMLOptions=?) => string = "getHTML"

  /**
Returns true if element has an attribute whose qualified name is qualifiedName, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/hasAttribute)
*/
  @send
  external hasAttribute: (T.t, string) => bool = "hasAttribute"

  /**
Returns true if element has an attribute whose namespace is namespace and local name is localName.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/hasAttributeNS)
*/
  @send
  external hasAttributeNS: (T.t, ~namespace: string, ~localName: string) => bool = "hasAttributeNS"

  /**
Returns true if element has attributes, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/hasAttributes)
*/
  @send
  external hasAttributes: T.t => bool = "hasAttributes"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/hasPointerCapture)
*/
  @send
  external hasPointerCapture: (T.t, int) => bool = "hasPointerCapture"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/insertAdjacentElement)
*/
  @send
  external insertAdjacentElement: (
    T.t,
    ~where: DOM.insertPosition,
    ~element: DOM.element,
  ) => DOM.element = "insertAdjacentElement"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/insertAdjacentHTML)
*/
  @send
  external insertAdjacentHTML: (T.t, ~position: DOM.insertPosition, ~string: string) => unit =
    "insertAdjacentHTML"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/insertAdjacentText)
*/
  @send
  external insertAdjacentText: (T.t, ~where: DOM.insertPosition, ~data: string) => unit =
    "insertAdjacentText"

  /**
Returns true if matching selectors against element's root yields element, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/matches)
*/
  @send
  external matches: (T.t, string) => bool = "matches"

  /**
Inserts nodes before the first child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/prepend)
*/
  @send
  external prepend: (T.t, DOM.node) => unit = "prepend"

  /**
Inserts nodes before the first child of node, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/prepend)
*/
  @send
  external prepend2: (T.t, string) => unit = "prepend"

  /**
Returns the first element that is a descendant of node that matches selectors.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/querySelector)
*/
  @send
  external querySelector: (T.t, string) => Null.t<DOM.element> = "querySelector"

  /**
Returns all element descendants of node that match selectors.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/querySelectorAll)
*/
  @send
  external querySelectorAll: (T.t, string) => DOM.nodeList<DOM.element> =
    "querySelectorAll"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/releasePointerCapture)
*/
  @send
  external releasePointerCapture: (T.t, int) => unit = "releasePointerCapture"

  /**
Removes node.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/remove)
*/
  @send
  external remove: T.t => unit = "remove"

  /**
Removes element's first attribute whose qualified name is qualifiedName.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/removeAttribute)
*/
  @send
  external removeAttribute: (T.t, string) => unit = "removeAttribute"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/removeAttributeNode)
*/
  @send
  external removeAttributeNode: (T.t, DOM.attr) => DOM.attr = "removeAttributeNode"

  /**
Removes element's attribute whose namespace is namespace and local name is localName.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/removeAttributeNS)
*/
  @send
  external removeAttributeNS: (T.t, ~namespace: string, ~localName: string) => unit =
    "removeAttributeNS"

  /**
Replace all children of node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/replaceChildren)
*/
  @send
  external replaceChildren: (T.t, DOM.node) => unit = "replaceChildren"

  /**
Replace all children of node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/replaceChildren)
*/
  @send
  external replaceChildren2: (T.t, string) => unit = "replaceChildren"

  /**
Replaces node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/replaceWith)
*/
  @send
  external replaceWith: (T.t, DOM.node) => unit = "replaceWith"

  /**
Replaces node with nodes, while replacing strings in nodes with equivalent Text nodes.

Throws a "HierarchyRequestError" DOMException if the constraints of the node tree are violated.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CharacterData/replaceWith)
*/
  @send
  external replaceWith2: (T.t, string) => unit = "replaceWith"

  /**
Displays element fullscreen and resolves promise when done.

When supplied, options's navigationUI member indicates whether showing navigation UI while in fullscreen is preferred or not. If set to "show", navigation simplicity is preferred over screen space, and if set to "hide", more screen space is preferred. User agents are always free to honor user preference over the application's. The default value "auto" indicates no application preference.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/requestFullscreen)
*/
  @send
  external requestFullscreen: (T.t, ~options: DOM.fullscreenOptions=?) => promise<unit> =
    "requestFullscreen"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/requestPointerLock)
*/
  @send
  external requestPointerLock: (T.t, ~options: DOM.pointerLockOptions=?) => promise<unit> =
    "requestPointerLock"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scroll)
*/
  @send
  external scroll: (T.t, ~options: DOM.scrollToOptions=?) => unit = "scroll"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scroll)
*/
  @send
  external scroll2: (T.t, ~x: float, ~y: float) => unit = "scroll"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollBy)
*/
  @send
  external scrollBy: (T.t, ~options: DOM.scrollToOptions=?) => unit = "scrollBy"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollBy)
*/
  @send
  external scrollBy2: (T.t, ~x: float, ~y: float) => unit = "scrollBy"

  /**
`scrollIntoView()`

Scrolls the element's ancestor containers such that the element on which scrollIntoView() is called is visible to the user.

```res
element->Element.scrollIntoView()
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollIntoView)
*/
  @send
  external scrollIntoView: T.t => unit = "scrollIntoView"

  /**
`scrollIntoView(true)`

Scrolls the element's ancestor containers such that the element on which scrollIntoView() is called is visible to the user.

```res
element->Element.scrollIntoView_alignToTop()
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollIntoView)
*/
  @send
  external scrollIntoViewAlignToTop: (T.t, @as(json`true`) _) => unit = "scrollIntoView"

  /**
`scrollIntoView({ behavior: "smooth" })`

Scrolls the element's ancestor containers such that the element on which scrollIntoView() is called is visible to the user.

```res
element->Element.scrollIntoViewWithOptions({ behavior: DOMAPI.Smooth })
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollIntoView)
*/
  @send
  external scrollIntoViewWithOptions: (T.t, DOM.scrollIntoViewOptions) => unit =
    "scrollIntoView"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTo)
*/
  @send
  external scrollTo: (T.t, ~options: DOM.scrollToOptions=?) => unit = "scrollTo"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/scrollTo)
*/
  @send
  external scrollTo2: (T.t, ~x: float, ~y: float) => unit = "scrollTo"

  /**
Sets the value of element's first attribute whose qualified name is qualifiedName to value.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setAttribute)
*/
  @send
  external setAttribute: (T.t, ~qualifiedName: string, ~value: string) => unit = "setAttribute"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setAttributeNode)
*/
  @send
  external setAttributeNode: (T.t, DOM.attr) => DOM.attr = "setAttributeNode"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setAttributeNodeNS)
*/
  @send
  external setAttributeNodeNS: (T.t, DOM.attr) => DOM.attr = "setAttributeNodeNS"

  /**
Sets the value of element's attribute whose namespace is namespace and local name is localName to value.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setAttributeNS)
*/
  @send
  external setAttributeNS: (
    DOM.element,
    ~namespace: string,
    ~qualifiedName: string,
    ~value: string,
  ) => unit = "setAttributeNS"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setHTMLUnsafe)
*/
  @send
  external setHTMLUnsafe: (T.t, string) => unit = "setHTMLUnsafe"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/setPointerCapture)
*/
  @send
  external setPointerCapture: (T.t, int) => unit = "setPointerCapture"

  /**
If force is not given, "toggles" qualifiedName, removing it if it is present and adding it if it is not present. If force is true, adds qualifiedName. If force is false, removes qualifiedName.

Returns true if qualifiedName is now present, and false otherwise.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Element/toggleAttribute)
*/
  @send
  external toggleAttribute: (T.t, ~qualifiedName: string, ~force: bool=?) => bool =
    "toggleAttribute"
}

include Impl({type t = DOM.element})

let isInstanceOf = (_: 't): bool => %raw(`param instanceof Element`)
