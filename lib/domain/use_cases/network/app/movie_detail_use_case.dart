import 'package:watch_app/app/core/use_cases/param_use_case.dart';
import 'package:watch_app/domain/entities/base/base_request.dart';
import 'package:watch_app/domain/entities/base/base_response.dart';
import 'package:watch_app/domain/repository/app/movie_repository.dart';

class MovieDetailUseCase extends ParamUseCase<BaseResponse, BaseRequest> {
  final MovieRepository _repo;

  MovieDetailUseCase(this._repo);

  @override
  Future<BaseResponse> execute(params) {
    return _repo.detail(params);
  }
}
