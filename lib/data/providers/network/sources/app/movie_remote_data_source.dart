import 'package:watch_app/data/models/base/base_request_model.dart';
import 'package:watch_app/data/models/base/base_response_model.dart';
import 'package:watch_app/data/models/movie/movie_feature_model.dart';
import 'package:watch_app/data/providers/network/api_data_source.dart';
import 'package:watch_app/data/providers/network/api_endpoint.dart';
import 'package:watch_app/data/providers/network/api_request_representable.dart';
import 'package:watch_app/data/providers/network/utils/app_api_utils.dart';

abstract class MovieRemoteDataSource {
  Future<BaseResponseModel> nowPlaying(
    BaseRequestModel data,
  );

  Future<BaseResponseModel> popular(
    BaseRequestModel data,
  );

  Future<BaseResponseModel> topRated(
    BaseRequestModel data,
  );

  Future<BaseResponseModel> upcoming(
    BaseRequestModel data,
  );

  Future<BaseResponseModel> search(
    BaseRequestModel data,
  );

  Future<BaseResponseModel> detail(
    BaseRequestModel data,
  );
}

class MovieRemoteDataSourceImpl extends ApiDataSource
    with AppApiUtils
    implements MovieRemoteDataSource {
  @override
  Future<BaseResponseModel> nowPlaying(data) async {
    final response = await execute(
      endpoint: ApiEndpoint.mNowPlaying,
      params: toParam(data),
      method: HTTPMethod.get,
      onBadResponse: (exception) => badResponse(exception),
    );

    return BaseResponseModel.listFromJson(
      response,
      (data) => data != null
          ? data
              .map<MovieFeatureModel>(
                (item) => MovieFeatureModel.fromJson(item),
              )
              .toList()
          : [],
      fromApi: "nowPlaying",
    );
  }

  @override
  Future<BaseResponseModel> popular(data) async {
    final response = await execute(
      endpoint: ApiEndpoint.mPopular,
      params: toParam(data),
      method: HTTPMethod.get,
      onBadResponse: (exception) => badResponse(exception),
    );

    return BaseResponseModel.listFromJson(
      response,
      (data) => data != null
          ? data
              .map<MovieFeatureModel>(
                (item) => MovieFeatureModel.fromJson(item),
              )
              .toList()
          : [],
      fromApi: "popular",
    );
  }

  @override
  Future<BaseResponseModel> topRated(data) async {
    final response = await execute(
      endpoint: ApiEndpoint.mTopRated,
      params: toParam(data),
      method: HTTPMethod.get,
      onBadResponse: (exception) => badResponse(exception),
    );

    return BaseResponseModel.listFromJson(
      response,
      (data) => data != null
          ? data
              .map<MovieFeatureModel>(
                (item) => MovieFeatureModel.fromJson(item),
              )
              .toList()
          : [],
      fromApi: "topRated",
    );
  }

  @override
  Future<BaseResponseModel> upcoming(data) async {
    final response = await execute(
      endpoint: ApiEndpoint.mUpComing,
      params: toParam(data),
      method: HTTPMethod.get,
      onBadResponse: (exception) => badResponse(exception),
    );

    return BaseResponseModel.listFromJson(
      response,
      (data) => data != null
          ? data
              .map<MovieFeatureModel>(
                (item) => MovieFeatureModel.fromJson(item),
              )
              .toList()
          : [],
      fromApi: "upcoming",
    );
  }

  @override
  Future<BaseResponseModel> search(data) async {
    final response = await execute(
      endpoint: ApiEndpoint.mSearch,
      params: toParam(data),
      method: HTTPMethod.get,
      onBadResponse: (exception) => badResponse(exception),
    );

    return BaseResponseModel.fromJson(
      response,
      () => response != null
          ? response
              .map<MovieFeatureModel>(
                (item) => MovieFeatureModel.fromJson(item),
              )
              .toList()
          : [],
      fromApi: "search",
    );
  }

  @override
  Future<BaseResponseModel> detail(data) async {
    final response = await execute(
      endpoint: ApiEndpoint.mDetail,
      params: toParam(data),
      method: HTTPMethod.get,
      onBadResponse: (exception) => badResponse(exception),
    );

    return BaseResponseModel.fromJson(
      response,
      () => MovieFeatureModel.fromJson(response),
      fromApi: "detail",
    );
  }
}
