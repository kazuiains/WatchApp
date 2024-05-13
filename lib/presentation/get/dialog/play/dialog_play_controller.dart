import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DialogPlayController extends GetxController {
  final _playCtrl = YoutubePlayerController(
    initialVideoId: "",
    flags: const YoutubePlayerFlags(
      autoPlay: false,
    ),
  ).obs;
  final _arguments = "".obs;

  setPlayCtrl(YoutubePlayerController value) {
    _playCtrl.value = value;
  }

  setArguments(String value) {
    _arguments.value = value;
  }

  YoutubePlayerController get playCtrl => _playCtrl.value;

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
      setPlayCtrl(
        YoutubePlayerController(
          initialVideoId: data,
          flags: const YoutubePlayerFlags(
            autoPlay: true,
          ),
        ),
      );
    }
  }
}
