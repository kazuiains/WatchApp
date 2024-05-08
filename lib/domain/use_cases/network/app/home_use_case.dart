import 'package:watch_app/app/core/use_cases/param_use_case.dart';
import 'package:watch_app/domain/entities/base/base_request.dart';
import 'package:watch_app/domain/entities/base/base_response.dart';
import 'package:watch_app/domain/repository/app/movie_repository.dart';

class HomeUseCase extends ParamUseCase<List<BaseResponse>, BaseRequest> {
  final MovieRepository _repo;

  HomeUseCase(this._repo);

  @override
  Future<List<BaseResponse>> execute(params) async {
    List<BaseResponse> result = await Future.wait<BaseResponse>([
      _repo.nowPlaying(params),
      _repo.popular(params),
      _repo.topRated(params),
      _repo.upcoming(params),
    ]);
    return result;
  }
}
