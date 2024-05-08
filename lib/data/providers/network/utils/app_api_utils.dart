import 'package:watch_app/app/exception/api_exception.dart';
import 'package:watch_app/data/models/base/base_request_model.dart';
import 'package:watch_app/data/models/base/base_response_model.dart';

mixin AppApiUtils {
  Map<String, String> toParam(BaseRequestModel param) {
    var entity = param.copyWith(apiKey: "befc21d948862259da6f029c54831a9c");
    return BaseRequestModel.fromEntity(entity).toParams();
  }

  badResponse(
    ApiException exception,
  ) {
    BaseResponseModel response = BaseResponseModel.fromJson(
      exception.response,
      () => null,
    );

    return ApiException(
      code: exception.code,
      message: exception.message,
      details: exception.details,
      statusCode: exception.statusCode,
      statusMessage: exception.statusMessage,
      response: response,
    );
  }
}
