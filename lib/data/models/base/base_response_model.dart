import 'package:watch_app/domain/entities/base/base_response.dart';

class BaseResponseModel extends BaseResponse {
  BaseResponseModel({
    super.success,
    super.statusCode,
    super.statusMessage,
    super.data,
  });

  _initFromEntity(BaseResponse entity) {
    success = entity.success;
    statusCode = entity.statusCode;
    statusMessage = entity.statusMessage;
    data = entity.data;
  }

  BaseResponseModel.fromDynamic(dynamic dynamicEntity) {
    var dataEntity = (dynamicEntity as BaseResponse);
    _initFromEntity(dataEntity);
  }

  BaseResponseModel.fromEntity(BaseResponse entity) {
    _initFromEntity(entity);
  }

  BaseResponseModel.fromJson(
    dynamic json,
    Function() response,
  ) {
    if (json != null) {
      success = json['success'];
      statusCode = json['status_code'];
      statusMessage = json['status_message'];
    }

    data = response();
  }
}
