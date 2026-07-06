let target = EventTarget.make()

target->EventTarget.addEventListener(EventType.Click, (event: DOM.event) => {
  event->Event.preventDefault
})
