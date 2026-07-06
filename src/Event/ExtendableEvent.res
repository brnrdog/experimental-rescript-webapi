type t = DOM.extendableEvent = private {...DOM.extendableEvent}

module Impl = (
  T: {
    type t
  },
) => {
  include Event.Impl({type t = T.t})

  @send
  external waitUntil: (T.t, promise<'a>) => unit = "waitUntil"
}

include Impl({type t = t})
