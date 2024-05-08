abstract class WebSocketStreamAddUseCase<CallbackData, InsertData> {
  Future<void> add(InsertData callback);

  Future<void> stream(Function(CallbackData data) callback);
}
