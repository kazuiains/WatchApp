import 'package:get/get.dart';
import 'package:watch_app/data/providers/network/sources/app/movie_remote_data_source.dart';
import 'package:watch_app/data/repository/app/movie_repository_impl.dart';
import 'package:watch_app/domain/use_cases/network/app/movie_detail_use_case.dart';
import 'package:watch_app/presentation/get/dialog/detail/dialog_movie_detail_controller.dart';

class DialogMovieDetailBinding extends Bindings {
  @override
  void dependencies() {
    _dataSource();
    _repository();
    _useCase();

    Get.put(
      DialogMovieDetailController(
        Get.find<MovieDetailUseCase>(),
      ),
    );
  }

  _dataSource() {
    Get.lazyPut(() => MovieRemoteDataSourceImpl());
  }

  _repository() {
    Get.lazyPut(
      () => MovieRepositoryImpl(
        remoteDataSource: Get.find<MovieRemoteDataSourceImpl>(),
      ),
    );
  }

  _useCase() {
    Get.lazyPut(
      () => MovieDetailUseCase(
        Get.find<MovieRepositoryImpl>(),
      ),
    );
  }
}
