import 'package:get/get.dart';
import 'package:watch_app/data/models/feature/movie/movie_feature_model.dart';
import 'package:watch_app/domain/entities/feature/movie/movie_feature.dart';
import 'package:watch_app/domain/use_cases/network/app/movie_detail_use_case.dart';

class DialogMovieDetailController extends GetxController {
  final MovieDetailUseCase useCase;

  DialogMovieDetailController(
    this.useCase,
  );

  final _arguments = MovieFeature().obs;

  setArguments(MovieFeature value) {
    _arguments.value = value;
  }

  MovieFeature get arguments => _arguments.value;

  @override
  void onInit() {
    super.onInit();
    _initArgument();
  }

  _initArgument() async {
    var data = Get.arguments;
    print("argumen is not empty: ${data != null}");
    print("argumen is movie feature: ${data is MovieFeature}");
    print("argumen is movie feature model: ${data is MovieFeatureModel}");
    if (data != null) {
      setArguments(data);
    }
  }
}
