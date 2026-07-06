let window = DOM.window
let location = window->Window.location

// Access properties using `.`
let href = location.href

// Invoke methods using the `->TypeModule`
location->Location.reload

let a = 0

// this is testing out the editor autocomplete
let fn = (l: DOM.location) => l->Location.reload
