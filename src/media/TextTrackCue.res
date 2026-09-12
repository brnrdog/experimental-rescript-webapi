/**
TextTrackCues represent a string of text that will be displayed for some duration of time on a TextTrack. This includes the start and end times that the cue will be displayed. A TextTrackCue cannot be used directly, instead one of the derived types (e.g. VTTCue) must be used.
[See TextTrackCue on MDN](https://developer.mozilla.org/docs/Web/API/TextTrackCue)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = WebVttTypes.textTrackCue = private {
  ...WebVttTypes.textTrackCue,
}
