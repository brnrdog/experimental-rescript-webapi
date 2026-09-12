// Every interface below is reachable from a public signature but used to have no owning
// module, so consumers could hold a value and not name its type. Each case names the type
// through its public module and reads a field, which is what the missing module blocked.

let animationTimelineCurrentTime = (t: AnimationTimeline.t): Null.t<float> => t.currentTime

let audioListenerPositionX = (t: AudioListener.t): WebAudioTypes.audioParam => t.positionX

let audioParamMap = (t: AudioParamMap.t): AudioParamMap.t => t

let audioWorklet = (t: AudioWorklet.t): AudioWorklet.t => t

let barPropVisible = (t: BarProp.t): bool => t.visible

let credentialId = (t: Credential.t): string => t.id

let cryptoKeyExtractable = (t: CryptoKey.t): bool => t.extractable

let customStateSet = (t: CustomStateSet.t): CustomStateSet.t => t

let documentTypeName = (t: DocumentType.t): string => t.name

let eventCounts = (t: EventCounts.t): EventCounts.t => t

let fileSystemName = (t: FileSystem.t): string => t.name

let fragmentDirective = (t: FragmentDirective.t): FragmentDirective.t => t

let gamepadId = (t: Gamepad.t): string => t.id

let gamepadButtonPressed = (t: GamepadButton.t): bool => t.pressed

let geolocationPositionErrorCode = (t: GeolocationPositionError.t): int => t.code

let intersectionObserverEntryIsIntersecting = (t: IntersectionObserverEntry.t): bool =>
  t.isIntersecting

let lockName = (t: Lock.t): string => t.name

let mutationRecordType = (t: MutationRecord.t): string => t.type_

let offscreenCanvasRenderingContext2DCanvas = (
  t: OffscreenCanvasRenderingContext2D.t,
): CanvasTypes.offscreenCanvas => t.canvas

let performanceMeasureName = (t: PerformanceMeasure.t): string => t.name

let permissionStatusName = (t: PermissionStatus.t): string => t.name

let pushSubscriptionOptionsUserVisibleOnly = (t: PushSubscriptionOptions.t): bool =>
  t.userVisibleOnly

let resizeObserverEntryTarget = (t: ResizeObserverEntry.t): DOMTree.element => t.target

let resizeObserverSizeInlineSize = (t: ResizeObserverSize.t): float => t.inlineSize

let screenWidth = (t: Screen.t): int => t.width

let speechSynthesisVoiceLang = (t: SpeechSynthesisVoice.t): string => t.lang

let textMetricsWidth = (t: TextMetrics.t): float => t.width

let textTrackCueStartTime = (t: TextTrackCue.t): float => t.startTime

let userActivationHasBeenActive = (t: UserActivation.t): bool => t.hasBeenActive

let validityStateValid = (t: ValidityState.t): bool => t.valid

let webGLRenderingContextDrawingBufferWidth = (t: WebGLRenderingContext.t): float =>
  t.drawingBufferWidth

let webGL2RenderingContextDrawingBufferWidth = (t: WebGL2RenderingContext.t): float =>
  t.drawingBufferWidth

// Was `type writableStreamDefaultWriter<'t> = unknown`, so `WritableStream.getWriter`
// handed back a value with no members at all.
let writableStreamDefaultWriterDesiredSize = (t: WritableStreamDefaultWriter.t<'w>): Null.t<
  float,
> => t.desiredSize

let writeThenRelease = async (t: WritableStreamDefaultWriter.t<string>) => {
  await t->WritableStreamDefaultWriter.write(~chunk="chunk")
  await t->WritableStreamDefaultWriter.close
  t->WritableStreamDefaultWriter.releaseLock
}

// The writer is what `getWriter` returns on both stream flavours. These two spell the
// receiver with its backing type because WritableStream and FileSystemWritableFileStream
// expose no `t` of their own yet.
let writerFromWritableStream = (stream: FileTypes.writableStream<string>) =>
  stream->WritableStream.getWriter

let writerFromFileSystemWritableFileStream = (stream: FileTypes.fileSystemWritableFileStream) =>
  stream->FileSystemWritableFileStream.getWriter
