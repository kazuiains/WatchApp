import 'package:get/get.dart';
import 'package:watch_app/presentation/get/dialog/play/dialog_play_controller.dart';

class DialogPlayBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      DialogPlayController(),
    );
  }
}
