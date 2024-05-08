abstract class WebSocketParamStreamUseCase<Params, CallbackData> {
  Future<void> stream(
    Params params,
    Function(CallbackData data) callback, {
    void Function()? onDone,
    Function? onError,
    bool? cancelOnError,
  });
}
