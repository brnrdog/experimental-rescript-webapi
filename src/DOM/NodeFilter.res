@editor.completeFrom(NodeFilter)
type t = private {}

@send
external acceptNode: (t, Node.t) => int = "acceptNode"
