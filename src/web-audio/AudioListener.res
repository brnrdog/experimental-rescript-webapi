/**
[See AudioListener on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener)
*/
type t = WebAudioTypes.audioListener = private {
  ...WebAudioTypes.audioListener,
}

/**
Deprecated. Use the `positionX`, `positionY` and `positionZ` audio params instead.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/setPosition)
*/
@send
external setPosition: (t, ~x: float, ~y: float, ~z: float) => unit = "setPosition"

/**
Deprecated. Use the `forwardX`-`upZ` audio params instead.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioListener/setOrientation)
*/
@send
external setOrientation: (
  t,
  ~x: float,
  ~y: float,
  ~z: float,
  ~xUp: float,
  ~yUp: float,
  ~zUp: float,
) => unit = "setOrientation"
