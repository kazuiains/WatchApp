import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DialogPlayController extends GetxController {
  late YoutubePlayerController playCtrl;
  final _arguments = "".obs;

  setArguments(String value) {
    _arguments.value = value;
  }

  String get arguments => _arguments.value;

  @override
  void onInit() {
    super.onInit();
    _initArgument();
  }

  _initArgument() async {
    var data = Get.arguments;
    if (data != null) {
      setArguments(data);
      print("data: $data");
    }
  }

  initPlayer() {
   playCtrl =  YoutubePlayerController(
      initialVideoId: arguments,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
      ),
    );
  }
}
