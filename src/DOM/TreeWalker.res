/**
The nodes of a document subtree and a position within them.
[See TreeWalker on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/root)
    */
  root: DomTypes.node,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/whatToShow)
    */
  whatToShow: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/filter)
    */
  filter: Null.t<NodeFilter.t>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/currentNode)
    */
  mutable currentNode: DomTypes.node,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/parentNode)
*/
@send
external parentNode: t => DomTypes.node = "parentNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/firstChild)
*/
@send
external firstChild: t => DomTypes.node = "firstChild"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/lastChild)
*/
@send
external lastChild: t => DomTypes.node = "lastChild"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/previousSibling)
*/
@send
external previousSibling: t => DomTypes.node = "previousSibling"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/nextSibling)
*/
@send
external nextSibling: t => DomTypes.node = "nextSibling"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/previousNode)
*/
@send
external previousNode: t => DomTypes.node = "previousNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/TreeWalker/nextNode)
*/
@send
external nextNode: t => DomTypes.node = "nextNode"
