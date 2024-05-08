import 'package:get/get.dart';
import 'package:watch_app/domain/use_cases/network/app/movie_search_use_case.dart';

class ListController extends GetxController {
  final MovieSearchUseCase useCase;

  ListController(
    this.useCase,
  );
}
