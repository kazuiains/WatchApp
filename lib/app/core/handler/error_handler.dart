import 'package:watch_app/app/exception/app_exception.dart';

typedef ErrorHandlerCallback = void Function(
  dynamic error,
  String? code,
  String? message,
  String? detail,
  int? statusCode,
  String? statusMessage,
  String? id,
  bool? isLocal,
);

abstract class ErrorHandler {
  ///to handle error callbacks.
  ///this function is automatically called
  ///when an error occurs
  onHandleError(
    dynamic error,
    String? code,
    String? message,
    String? detail,
    int? statusCode,
    String? statusMessage,
    String? id,
    bool? isLocal,
  );
}

valueError(
  AppException exception,
  Function(
    dynamic error,
    String? code,
    String? message,
    String? detail,
    int? statusCode,
    String? statusMessage,
    String? id,
    bool? isLocal,
  ) errorFunction, {
  String id = "",
  bool isLocal = false,
}) {
  errorFunction(
    exception.response,
    exception.code,
    exception.message,
    exception.details,
    exception.statusCode,
    exception.statusMessage,
    id,
    isLocal,
  );
}
