class BaseResponse {
  bool? success;
  num? statusCode;
  String? statusMessage;
  dynamic data;
  String? from;

  BaseResponse({
    this.success,
    this.statusCode,
    this.statusMessage,
    this.data,
    this.from,
  });

  BaseResponse copyWith({
    bool? success,
    num? statusCode,
    String? statusMessage,
    dynamic data,
    String? from,
  }) =>
      BaseResponse(
        success: success ?? this.success,
        data: data ?? this.data,
        statusCode: statusCode ?? this.statusCode,
        statusMessage: statusMessage ?? this.statusMessage,
        from: from ?? this.from,
      );
}
