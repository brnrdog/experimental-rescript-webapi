/**
An iterator over the members of a list of the nodes in a subtree of the DOM. The nodes will be returned in document order.
[See NodeIterator on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator)
*/
type t = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/root)
    */
  root: Node.t,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/referenceNode)
    */
  referenceNode: Node.t,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/pointerBeforeReferenceNode)
    */
  pointerBeforeReferenceNode: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/whatToShow)
    */
  whatToShow: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/filter)
    */
  filter: Null.t<NodeFilter.t>,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/nextNode)
*/
@send
external nextNode: t => Node.t = "nextNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/previousNode)
*/
@send
external previousNode: t => Node.t = "previousNode"
