abstract class WebSocketParamStreamAddUseCase<Params, CallbackData,
    InsertData> {
  Future<void> add(Params params, InsertData callback);

  Future<void> stream(Params params, Function(CallbackData data) callback);
}
