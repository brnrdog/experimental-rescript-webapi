external toHTMLInputElement: Element.t => HTMLInputElement.t = "%identity"

let input: HTMLInputElement.t =
  DomGlobal.document->Document.createElement("input")->toHTMLInputElement
let value = input.value
