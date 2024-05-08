import 'package:watch_app/domain/entities/base/base_request.dart';

class BaseRequestModel extends BaseRequest {
  BaseRequestModel({
    super.apiKey,
    super.page,
    super.query,
    super.appendToResponse,
  });

  _initFromEntity(BaseRequest entity) {
    apiKey = entity.apiKey;
    page = entity.page;
    query = entity.query;
    appendToResponse = entity.appendToResponse;
  }

  BaseRequestModel.fromDynamic(dynamic dynamicEntity) {
    var dataEntity = (dynamicEntity as BaseRequest);
    _initFromEntity(dataEntity);
  }

  BaseRequestModel.fromEntity(BaseRequest entity) {
    _initFromEntity(entity);
  }

  Map<String, String> toParams() {
    final map = <String, String>{};
    if (apiKey != null) {
      map['api_key'] = apiKey!;
    }
    if (page != null) {
      map['page'] = page!;
    }
    if (query != null) {
      map['query'] = query!;
    }
    if (appendToResponse != null) {
      map['append_to_response'] = appendToResponse!;
    }
    return map;
  }
}
