import 'package:get/get.dart';
import 'package:watch_app/domain/use_cases/network/app/movie_detail_use_case.dart';

class DetailController extends GetxController {
  final MovieDetailUseCase useCase;

  DetailController(
    this.useCase,
  );
}
