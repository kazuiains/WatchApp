class BaseRequest {
  String? apiKey;
  String? page;
  String? query;
  String? appendToResponse;

  BaseRequest({
    this.apiKey,
    this.page,
    this.query,
    this.appendToResponse,
  });

  BaseRequest copyWith({
    String? apiKey,
    String? appendToResponse,
    String? page,
    String? query,
  }) =>
      BaseRequest(
        apiKey: apiKey ?? this.apiKey,
        appendToResponse: appendToResponse ?? this.appendToResponse,
        page: page ?? this.page,
        query: query ?? this.query,
      );
}
