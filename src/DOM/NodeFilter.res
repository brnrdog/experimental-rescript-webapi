@editor.completeFrom(NodeFilter)
type t = private {}

@send
external acceptNode: (t, DomTypes.node) => int = "acceptNode"
