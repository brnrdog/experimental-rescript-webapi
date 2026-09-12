/**
This Web Speech API interface represents a voice that the system supports. Every SpeechSynthesisVoice has its own relative speech service including information about language, name and URI.
[See SpeechSynthesisVoice on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisVoice)
*/
type t = WebSpeechTypes.speechSynthesisVoice = private {
  ...WebSpeechTypes.speechSynthesisVoice,
}
