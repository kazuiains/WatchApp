import 'package:watch_app/domain/entities/base/base_response.dart';

class BaseResponseModel extends BaseResponse {
  BaseResponseModel({
    super.success,
    super.statusCode,
    super.statusMessage,
    super.data,
    super.from,
  });

  _initFromEntity(BaseResponse entity) {
    success = entity.success;
    statusCode = entity.statusCode;
    statusMessage = entity.statusMessage;
    data = entity.data;
    from = entity.from;
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
    Function() response, {
    String? fromApi,
  }) {
    if (json != null) {
      success = json['success'];
      statusCode = json['status_code'];
      statusMessage = json['status_message'];
    }

    if (fromApi != null) {
      from = fromApi;
    }

    data = response();
  }

  BaseResponseModel.listFromJson(
      dynamic json,
      Function(dynamic data) response, {
        String? fromApi,
      }) {
    if (json != null) {
      success = json['success'];
      statusCode = json['status_code'];
      statusMessage = json['status_message'];
    }

    if (fromApi != null) {
      from = fromApi;
    }

    if(json["results"] != null ){
      data = response(json["results"]);
    }
  }
}
