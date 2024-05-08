import 'package:get/get.dart';
import 'package:watch_app/data/providers/network/sources/app/movie_remote_data_source.dart';
import 'package:watch_app/data/repository/app/movie_repository_impl.dart';
import 'package:watch_app/domain/use_cases/network/app/movie_search_use_case.dart';
import 'package:watch_app/presentation/get/list/list_controller.dart';

class ListBinding extends Bindings {
  @override
  void dependencies() {
    _dataSource();
    _repository();
    _useCase();

    Get.put(
      ListController(
        Get.find<MovieSearchUseCase>(),
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
      () => MovieSearchUseCase(
        Get.find<MovieRepositoryImpl>(),
      ),
    );
  }
}
