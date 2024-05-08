import 'package:get/get.dart';
import 'package:watch_app/domain/use_cases/network/app/home_use_case.dart';

class HomeController extends GetxController {
  final HomeUseCase useCase;

  HomeController(
    this.useCase,
  );
}
