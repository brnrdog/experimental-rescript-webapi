/**
A Node containing a doctype.
[See DocumentType on MDN](https://developer.mozilla.org/docs/Web/API/DocumentType)
*/
type t = DOMImplementation.documentType = private {
  ...DOMImplementation.documentType,
}
