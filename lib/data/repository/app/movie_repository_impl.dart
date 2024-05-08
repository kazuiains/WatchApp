import 'package:watch_app/data/models/base/base_request_model.dart';
import 'package:watch_app/data/providers/network/sources/app/movie_remote_data_source.dart';
import 'package:watch_app/domain/entities/base/base_response.dart';
import 'package:watch_app/domain/repository/app/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource remoteDataSource;

  MovieRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<BaseResponse> nowPlaying(data) async {
    final request = BaseRequestModel.fromDynamic(data);
    return remoteDataSource.nowPlaying(request);
  }

  @override
  Future<BaseResponse> popular(data) async {
    final request = BaseRequestModel.fromDynamic(data);
    return remoteDataSource.popular(request);
  }

  @override
  Future<BaseResponse> topRated(data) async {
    final request = BaseRequestModel.fromDynamic(data);
    return remoteDataSource.topRated(request);
  }

  @override
  Future<BaseResponse> upcoming(data) async {
    final request = BaseRequestModel.fromDynamic(data);
    return remoteDataSource.upcoming(request);
  }

  @override
  Future<BaseResponse> search(data) async {
    final request = BaseRequestModel.fromDynamic(data);
    return remoteDataSource.search(request);
  }

  @override
  Future<BaseResponse> detail(data) async {
    final request = BaseRequestModel.fromDynamic(data);
    return remoteDataSource.detail(request);
  }
}
