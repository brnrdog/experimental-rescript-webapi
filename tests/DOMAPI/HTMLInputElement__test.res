external toHTMLInputElement: Element.t => DomTypes.htmlInputElement = "%identity"

let input: DomTypes.htmlInputElement =
  DomGlobal.document->Document.createElement("input")->toHTMLInputElement
let value = input.value
