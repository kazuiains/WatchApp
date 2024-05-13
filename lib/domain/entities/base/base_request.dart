class BaseRequest {
  String? id;
  String? apiKey;
  String? page;
  String? query;
  String? appendToResponse;

  BaseRequest({
    this.id,
    this.apiKey,
    this.page,
    this.query,
    this.appendToResponse,
  });

  BaseRequest copyWith({
    String? id,
    String? apiKey,
    String? appendToResponse,
    String? page,
    String? query,
  }) =>
      BaseRequest(
        id: id ?? this.id,
        apiKey: apiKey ?? this.apiKey,
        appendToResponse: appendToResponse ?? this.appendToResponse,
        page: page ?? this.page,
        query: query ?? this.query,
      );
}
