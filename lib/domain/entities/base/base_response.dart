class BaseResponse {
  bool? success;
  num? statusCode;
  String? statusMessage;
  dynamic data;

  BaseResponse({
    this.success,
    this.statusCode,
    this.statusMessage,
    this.data,
  });

  BaseResponse copyWith({
    bool? success,
    num? statusCode,
    String? statusMessage,
    dynamic data,
  }) =>
      BaseResponse(
        success: success ?? this.success,
        data: data ?? this.data,
        statusCode: statusCode ?? this.statusCode,
        statusMessage: statusMessage ?? this.statusMessage,
      );
}
