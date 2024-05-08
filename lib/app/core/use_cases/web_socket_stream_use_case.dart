abstract class WebSocketStreamUseCase<CallbackData> {
  Future<void> stream(Function(CallbackData data) callback);
}
