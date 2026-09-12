/**
The CryptoKey dictionary of the Web Crypto API represents a cryptographic key.
[See CryptoKey on MDN](https://developer.mozilla.org/docs/Web/API/CryptoKey)
*/
type t = WebCryptoTypes.cryptoKey = private {
  ...WebCryptoTypes.cryptoKey,
}
