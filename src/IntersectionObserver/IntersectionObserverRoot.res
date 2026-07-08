external fromDocument: DOM.document => IntersectionObserverTypes.root = "%identity"
external fromElement: Element.t => IntersectionObserverTypes.root = "%identity"
external fromNull: IntersectionObserverTypes.root = "null"

external toElement: IntersectionObserverTypes.root => Element.t = "%identity"
external toDocument: IntersectionObserverTypes.root => DOM.document = "%identity"

type decoded =
  | Element(Element.t)
  | Document(DOM.document)
  | Null

let decode = (t: IntersectionObserverTypes.root): decoded => {
  if Element.isInstanceOf(t) {
    Element(t->toElement)
  } else if Document.isInstanceOf(t) {
    Document(t->toDocument)
  } else {
    Null
  }
}
