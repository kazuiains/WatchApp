import 'package:watch_app/domain/entities/base/base_response.dart';

abstract class MovieRepository {
  Future<BaseResponse> nowPlaying(
    dynamic data,
  );

  Future<BaseResponse> popular(
    dynamic data,
  );

  Future<BaseResponse> topRated(
    dynamic data,
  );

  Future<BaseResponse> upcoming(
    dynamic data,
  );

  Future<BaseResponse> search(
    dynamic data,
  );

  Future<BaseResponse> detail(
    dynamic data,
  );
}
