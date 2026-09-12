type t<'w> = FileTypes.writableStreamDefaultWriter<'w> = private {
  ...FileTypes.writableStreamDefaultWriter<'w>,
}

/**
Aborts the stream, signaling that the producer can no longer successfully write to it.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultWriter/abort)
*/
@send
external abort: (t<'w>, ~reason: JSON.t=?) => promise<unit> = "abort"

/**
Closes the associated writable stream.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultWriter/close)
*/
@send
external close: t<'w> => promise<unit> = "close"

/**
Releases the writer's lock on the corresponding stream.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultWriter/releaseLock)
*/
@send
external releaseLock: t<'w> => unit = "releaseLock"

/**
Writes a passed chunk of data to a WritableStream and its underlying sink, then returns a promise that resolves to indicate the success or failure of the write operation.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultWriter/write)
*/
@send
external write: (t<'w>, ~chunk: 'w=?) => promise<unit> = "write"
