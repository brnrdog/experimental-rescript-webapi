@@warning("-30")

type domStringList = DOM.domStringList
type file = FileTypes.file
type blob = FileTypes.blob
type fileSystemEntry = FileAndDirectoryEntriesTypes.fileSystemEntry
type remotePlayback = RemotePlaybackTypes.remotePlayback
type fontFaceSet = CssFontLoadingTypes.fontFaceSet
type structuredSerializeOptions = ChannelMessagingTypes.structuredSerializeOptions

type validityState = DOM.validityState
type cssStyleSheet = DOM.cssStyleSheet
type nodeList<'a> = DOM.nodeList<'a>
type node = Node.t
type cssStyleDeclaration = DOM.cssStyleDeclaration
type domRectReadOnly = DOM.domRectReadOnly
type styleSheet = DOM.styleSheet
type mediaQueryList = DOM.mediaQueryList
type domRect = DOM.domRect
type cssStyleValue = DOM.cssStyleValue
type styleSheetList = DOM.styleSheetList
type fileList = DOM.fileList
type cssRule = DOM.cssRule
type domRectList = DOM.domRectList
type caretPosition = DOM.caretPosition
type idleDeadline = DOM.idleDeadline
type cssRuleList = DOM.cssRuleList
type mediaKeySystemConfiguration = BaseEncryptedMediaExtensions.mediaKeySystemConfiguration

/**
A window containing a WebApiDOM document; the document property points to the WebApiDOM document loaded in that window.
[See Window on MDN](https://developer.mozilla.org/docs/Web/API/Window)
*/
@editor.completeFrom(Window) type window = DOM.window

type slotAssignmentMode =
  | @as("manual") Manual
  | @as("named") Named

type autoFillBase =
  | @as("off") Off
  | @as("on") On

type documentReadyState =
  | @as("complete") Complete
  | @as("interactive") Interactive
  | @as("loading") Loading

type documentVisibilityState =
  | @as("hidden") Hidden
  | @as("visible") Visible

type orientationType =
  | @as("landscape-primary") LandscapePrimary
  | @as("landscape-secondary") LandscapeSecondary
  | @as("portrait-primary") PortraitPrimary
  | @as("portrait-secondary") PortraitSecondary

type insertPosition =
  | @as("afterbegin") Afterbegin
  | @as("afterend") Afterend
  | @as("beforebegin") Beforebegin
  | @as("beforeend") Beforeend

type scrollBehavior =
  | @as("auto") Auto
  | @as("instant") Instant
  | @as("smooth") Smooth

type fullscreenNavigationUI =
  | @as("auto") Auto
  | @as("hide") Hide
  | @as("show") Show

type remotePlaybackState =
  | @as("connected") Connected
  | @as("connecting") Connecting
  | @as("disconnected") Disconnected

type referrerPolicy =
  | @as("no-referrer") NoReferrer
  | @as("no-referrer-when-downgrade") NoReferrerWhenDowngrade
  | @as("origin") Origin
  | @as("origin-when-cross-origin") OriginWhenCrossOrigin
  | @as("same-origin") SameOrigin
  | @as("strict-origin") StrictOrigin
  | @as("strict-origin-when-cross-origin") StrictOriginWhenCrossOrigin
  | @as("unsafe-url") UnsafeUrl

type animationPlayState =
  | @as("finished") Finished
  | @as("idle") Idle
  | @as("paused") Paused
  | @as("running") Running

type animationReplaceState =
  | @as("active") Active
  | @as("persisted") Persisted
  | @as("removed") Removed


type imageOrientation =
  | @as("flipY") FlipY
  | @as("from-image") FromImage
  | @as("none") None

type premultiplyAlpha =
  | @as("default") Default
  | @as("none") None
  | @as("premultiply") Premultiply

type colorSpaceConversion =
  | @as("default") Default
  | @as("none") None

type resizeQuality =
  | @as("high") High
  | @as("low") Low
  | @as("medium") Medium
  | @as("pixelated") Pixelated

type scrollLogicalPosition =
  | @as("center") Center
  | @as("end") End
  | @as("nearest") Nearest
  | @as("start") Start

type selectionMode =
  | @as("end") End
  | @as("preserve") Preserve
  | @as("select") Select
  | @as("start") Start


type videoPixelFormat =
  | BGRA
  | BGRX
  | I420
  | I420A
  | I422
  | I444
  | NV12
  | RGBA
  | RGBX

type videoColorPrimaries =
  | @as("bt470bg") Bt470bg
  | @as("bt709") Bt709
  | @as("smpte170m") Smpte170m

type videoTransferCharacteristics =
  | @as("bt709") Bt709
  | @as("iec61966-2-1") Iec6196621
  | @as("smpte170m") Smpte170m

type videoMatrixCoefficients =
  | @as("bt470bg") Bt470bg
  | @as("bt709") Bt709
  | @as("rgb") Rgb
  | @as("smpte170m") Smpte170m

type alphaOption =
  | @as("discard") Discard
  | @as("keep") Keep

type predefinedColorSpace =
  | @as("display-p3") DisplayP3
  | @as("srgb") Srgb

type shareData = {
  mutable files?: array<file>,
  mutable title?: string,
  mutable text?: string,
  mutable url?: string,
}

/**
[See UserActivation on MDN](https://developer.mozilla.org/docs/Web/API/UserActivation)
*/
type userActivation = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/UserActivation/hasBeenActive)
    */
  hasBeenActive: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/UserActivation/isActive)
    */
  isActive: bool,
}

/**
The state and the identity of the user agent. It allows scripts to query it and to register themselves to carry on some activities.
[See Navigator on MDN](https://developer.mozilla.org/docs/Web/API/Navigator)
*/
@editor.completeFrom(Navigator)
type navigator = DOM.navigator

// TODO: mark as private once mutating fields of private records is allowed
@editor.completeFrom(DOMTokenList)
type domTokenList = {
  /**
    Returns the number of tokens.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/length)
    */
  length: int,
  /**
    Returns the associated set as string.

Can be set, to change the associated attribute.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMTokenList/value)
    */
  mutable value: string,
}

/**
[See FragmentDirective on MDN](https://developer.mozilla.org/docs/Web/API/FragmentDirective)
*/
type fragmentDirective = {}

/**
[See CustomElementRegistry on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry)
*/
@editor.completeFrom(CustomElementRegistry)
type customElementRegistry = private {}

/**
[See BarProp on MDN](https://developer.mozilla.org/docs/Web/API/BarProp)
*/
type barProp = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BarProp/visible)
    */
  visible: bool,
}

/**
[See ScreenOrientation on MDN](https://developer.mozilla.org/docs/Web/API/ScreenOrientation)
*/
@editor.completeFrom(ScreenOrientation)
type screenOrientation = private {
  ...DOM.eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ScreenOrientation/type)
    */
  @as("type")
  type_: orientationType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ScreenOrientation/angle)
    */
  angle: int,
}

/**
A screen, usually the one on which the current window is being rendered, and is obtained using window.screen.
[See Screen on MDN](https://developer.mozilla.org/docs/Web/API/Screen)
*/
type screen = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/availWidth)
    */
  availWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/availHeight)
    */
  availHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/width)
    */
  width: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/height)
    */
  height: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/colorDepth)
    */
  colorDepth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/pixelDepth)
    */
  pixelDepth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Screen/orientation)
    */
  orientation: screenOrientation,
}

@unboxed
type vibratePattern =
  | Int(int)
  | IntArray(array<int>)

type renderingContext = unknown

type offscreenRenderingContext = unknown

/**
[See AnimationTimeline on MDN](https://developer.mozilla.org/docs/Web/API/AnimationTimeline)
*/
@editor.completeFrom(Animation)
type rec animationTimeline = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationTimeline/currentTime)
    */
  currentTime: Null.t<float>,
}

/**
[See DocumentTimeline on MDN](https://developer.mozilla.org/docs/Web/API/DocumentTimeline)
*/
@editor.completeFrom(DocumentTimeline) and documentTimeline = private {
  // Base properties from AnimationTimeline
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnimationTimeline/currentTime)
    */
  currentTime: Null.t<float>,
  // End base properties from AnimationTimeline
}

/**
[See MediaList on MDN](https://developer.mozilla.org/docs/Web/API/MediaList)
TODO: mark as private once mutating fields of private records is allowed
*/
@editor.completeFrom(MediaList)
type mediaList = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/mediaText)
    */
  mutable mediaText: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaList/length)
    */
  length: int,
}

/**
[See StylePropertyMapReadOnly on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly)
*/
@editor.completeFrom(StylePropertyMapReadOnly)
type stylePropertyMapReadOnly = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly/size)
    */
  size: int,
}

/**
[See StylePropertyMap on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap)
*/
@editor.completeFrom(StylePropertyMap)
type stylePropertyMap = private {
  ...stylePropertyMapReadOnly,
}

/**
Used for attributes of type SVGPreserveAspectRatio which can be animated.
[See SVGAnimatedPreserveAspectRatio on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedPreserveAspectRatio)
*/
type svgAnimatedPreserveAspectRatio = {}

/**
Correspond to the <length> basic data type.
[See SVGLength on MDN](https://developer.mozilla.org/docs/Web/API/SVGLength)
*/
@editor.completeFrom(SVGLength)
type svgLength = private {}

/**
Used for attributes of basic type <length> which can be animated.
[See SVGAnimatedLength on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedLength)
*/
type svgAnimatedLength = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedLength/baseVal)
    */
  baseVal: svgLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGAnimatedLength/animVal)
    */
  animVal: svgLength,
}

/**
All of the SVG WebApiDOM interfaces that correspond directly to elements in the SVG language derive from the SVGElement interface.
[See SVGElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGElement)
*/
type svgElement = {
  ...Element.t,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/dataset)
    */
  dataset: DOMStringMap.t,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/nonce)
    */
  mutable nonce?: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/autofocus)
    */
  mutable autofocus: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/tabIndex)
    */
  mutable tabIndex: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/style)
    */
  style: cssStyleDeclaration,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLElement/attributeStyleMap)
    */
  attributeStyleMap: stylePropertyMap,
}

/**
SVG elements whose primary purpose is to directly render graphics into a group.
[See SVGGraphicsElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGGraphicsElement)
*/
@editor.completeFrom(SVGGraphicsElement)
type svgGraphicsElement = private {
  ...svgElement,
}

/**
Corresponds to the <image> element.
[See SVGImageElement on MDN](https://developer.mozilla.org/docs/Web/API/SVGImageElement)
*/
type svgImageElement = {
  ...svgGraphicsElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGImageElement/x)
    */
  x: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGImageElement/y)
    */
  y: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGImageElement/width)
    */
  width: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGImageElement/height)
    */
  height: svgAnimatedLength,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SVGImageElement/preserveAspectRatio)
    */
  preserveAspectRatio: svgAnimatedPreserveAspectRatio,
}

/**
[See DOMMatrixReadOnly on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly)
*/
@editor.completeFrom(DOMMatrixReadOnly)
type domMatrixReadOnly = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  a: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  b: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  c: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  d: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  e: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  f: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m11: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m12: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m13: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m14: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m21: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m22: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m23: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m24: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m31: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m32: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m33: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m34: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m41: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m42: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m43: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly#instance_properties)
    */
  m44: float,
}

/**
[See DOMMatrix on MDN](https://developer.mozilla.org/docs/Web/API/DOMMatrix)
*/
@editor.completeFrom(DOMMatrix)
type domMatrix = private {
  ...domMatrixReadOnly,
}

/**
[See VideoColorSpace on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace)
*/
@editor.completeFrom(VideoColorSpace)
type videoColorSpace = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace/primaries)
    */
  primaries: Null.t<videoColorPrimaries>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace/transfer)
    */
  transfer: Null.t<videoTransferCharacteristics>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace/matrix)
    */
  matrix: Null.t<videoMatrixCoefficients>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace/fullRange)
    */
  fullRange: Null.t<bool>,
}

/**
[See VideoFrame on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@editor.completeFrom(VideoFrame)
type videoFrame = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/format)
    */
  format: Null.t<videoPixelFormat>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/codedWidth)
    */
  codedWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/codedHeight)
    */
  codedHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/codedRect)
    */
  codedRect: Null.t<domRectReadOnly>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/visibleRect)
    */
  visibleRect: Null.t<domRectReadOnly>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/displayWidth)
    */
  displayWidth: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/displayHeight)
    */
  displayHeight: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/duration)
    */
  duration: Null.t<int>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/timestamp)
    */
  timestamp: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/colorSpace)
    */
  colorSpace: videoColorSpace,
}

/**
The underlying pixel data of an area of a <canvas> element. It is created using the ImageData() constructor or creator methods on the CanvasRenderingContext2D object associated with a canvas: createImageData() and getImageData(). It can also be used to set a part of the canvas by using putImageData().
[See ImageData on MDN](https://developer.mozilla.org/docs/Web/API/ImageData)
*/
@editor.completeFrom(ImageData)
type imageData = private {
  /**
    Returns the actual dimensions of the data in the ImageData object, in pixels.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageData/width)
    */
  width: int,
  /**
    Returns the actual dimensions of the data in the ImageData object, in pixels.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageData/height)
    */
  height: int,
  /**
    Returns the one-dimensional array containing the data in RGBA order, as integers in the range 0 to 255.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageData/data)
    */
  data: Uint8ClampedArray.t,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageData/colorSpace)
    */
  colorSpace: predefinedColorSpace,
}

/**
[See DOMPointReadOnly on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly)
*/
@editor.completeFrom(DOMPointReadOnly)
type domPointReadOnly = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/x)
    */
  x: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/y)
    */
  y: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/z)
    */
  z: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/w)
    */
  w: float,
}

/**
[See DOMPoint on MDN](https://developer.mozilla.org/docs/Web/API/DOMPoint)
*/
@editor.completeFrom(DOMPoint)
type domPoint = private {
  ...domPointReadOnly,
}

/**
 [Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/getContext#contextattributes)
 */
type canvasContext2DAttributes = {
  alpha: bool,
  colorspace?: predefinedColorSpace,
  desynchronized: bool,
  willReadFrequently: bool,
}

/**
The CanvasRenderingContext2D interface, part of the WebApiCanvas API, provides the 2D rendering context for the drawing surface of a <canvas> element. It is used for drawing shapes, text, images, and other objects.
[See CanvasRenderingContext2D on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D)
*/
@editor.completeFrom(CanvasRenderingContext2D)
type canvasRenderingContext2D

type elementDefinitionOptions = {mutable extends?: string}

type documentTimelineOptions = {mutable originTime?: float}

type getRootNodeOptions = {mutable composed?: bool}

type checkVisibilityOptions = {
  mutable checkOpacity?: bool,
  mutable checkVisibilityCSS?: bool,
  mutable contentVisibilityAuto?: bool,
  mutable opacityProperty?: bool,
  mutable visibilityProperty?: bool,
}

type scrollOptions = {mutable behavior?: scrollBehavior}

type scrollToOptions = {
  ...scrollOptions,
  mutable left?: float,
  mutable top?: float,
}

type fullscreenOptions = {mutable navigationUI?: fullscreenNavigationUI}

type pointerLockOptions = {mutable unadjustedMovement?: bool}

type idleRequestOptions = {mutable timeout?: int}

type domRectInit = {
  mutable x?: float,
  mutable y?: float,
  mutable width?: float,
  mutable height?: float,
}

type validityStateFlags = {
  mutable valueMissing?: bool,
  mutable typeMismatch?: bool,
  mutable patternMismatch?: bool,
  mutable tooLong?: bool,
  mutable tooShort?: bool,
  mutable rangeUnderflow?: bool,
  mutable rangeOverflow?: bool,
  mutable stepMismatch?: bool,
  mutable badInput?: bool,
  mutable customError?: bool,
}

type cssStyleSheetInit = {
  mutable baseURL?: string,
  mutable media?: unknown,
  mutable disabled?: bool,
}

type assignedNodesOptions = {mutable flatten?: bool}

type focusOptions = {mutable preventScroll?: bool}

type imageBitmapOptions = {
  mutable imageOrientation?: imageOrientation,
  mutable premultiplyAlpha?: premultiplyAlpha,
  mutable colorSpaceConversion?: colorSpaceConversion,
  mutable resizeWidth?: int,
  mutable resizeHeight?: int,
  mutable resizeQuality?: resizeQuality,
}

type scrollIntoViewOptions = {
  ...scrollOptions,
  mutable block?: scrollLogicalPosition,
  mutable inline?: scrollLogicalPosition,
}

type windowPostMessageOptions = {
  ...structuredSerializeOptions,
  mutable targetOrigin?: string,
}

type svgBoundingBoxOptions = {
  mutable fill?: bool,
  mutable stroke?: bool,
  mutable markers?: bool,
  mutable clipped?: bool,
}

type domMatrix2DInit = {
  mutable a?: float,
  mutable b?: float,
  mutable c?: float,
  mutable d?: float,
  mutable e?: float,
  mutable f?: float,
  mutable m11?: float,
  mutable m12?: float,
  mutable m21?: float,
  mutable m22?: float,
  mutable m41?: float,
  mutable m42?: float,
}

type domMatrixInit = {
  ...domMatrix2DInit,
  mutable m13?: float,
  mutable m14?: float,
  mutable m23?: float,
  mutable m24?: float,
  mutable m31?: float,
  mutable m32?: float,
  mutable m33?: float,
  mutable m34?: float,
  mutable m43?: float,
  mutable m44?: float,
  mutable is2D?: bool,
}

type videoFrameInit = {
  mutable duration?: int,
  mutable timestamp?: int,
  mutable alpha?: alphaOption,
  mutable visibleRect?: domRectInit,
  mutable displayWidth?: int,
  mutable displayHeight?: int,
}

type videoColorSpaceInit = {
  mutable primaries?: Null.t<videoColorPrimaries>,
  mutable transfer?: Null.t<videoTransferCharacteristics>,
  mutable matrix?: Null.t<videoMatrixCoefficients>,
  mutable fullRange?: Null.t<bool>,
}

type planeLayout = {
  mutable offset: int,
  mutable stride: int,
}

type videoFrameBufferInit = {
  mutable format: videoPixelFormat,
  mutable codedWidth: int,
  mutable codedHeight: int,
  mutable timestamp: int,
  mutable duration?: int,
  mutable layout?: array<planeLayout>,
  mutable visibleRect?: domRectInit,
  mutable displayWidth?: int,
  mutable displayHeight?: int,
  mutable colorSpace?: videoColorSpaceInit,
}

type imageDataSettings = {mutable colorSpace?: predefinedColorSpace}

type videoFrameCopyToOptions = {
  mutable rect?: domRectInit,
  mutable layout?: array<planeLayout>,
  mutable format?: videoPixelFormat,
  mutable colorSpace?: predefinedColorSpace,
}

type domPointInit = {
  mutable x?: float,
  mutable y?: float,
  mutable z?: float,
  mutable w?: float,
}

type xPathNSResolver

type imageBitmapSource

type customElementConstructor

type timeoutId
