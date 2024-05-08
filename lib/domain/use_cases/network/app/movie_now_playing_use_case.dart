import 'package:watch_app/app/core/use_cases/param_use_case.dart';
import 'package:watch_app/domain/entities/base/base_request.dart';
import 'package:watch_app/domain/entities/base/base_response.dart';
import 'package:watch_app/domain/repository/app/movie_repository.dart';

class MovieNowPlayingUseCase extends ParamUseCase<BaseResponse, BaseRequest> {
  final MovieRepository _repo;

  MovieNowPlayingUseCase(this._repo);

  @override
  Future<BaseResponse> execute(params) {
    return _repo.nowPlaying(params);
  }
}
