import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_app/presentation/get/dialog/play/dialog_play_controller.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DialogPlayView extends GetView<DialogPlayController> {
  const DialogPlayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => YoutubePlayerBuilder(

          player: YoutubePlayer(
            aspectRatio: 16 / 9,
            controller: controller.playCtrl,
            showVideoProgressIndicator: true,
            onReady: () {},
          ),
          builder: (context, player) =>  Column(
            children: [
              player,
            ],
          ),
        ),

      ),
    );
  }
}
