import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_app/app/config/app_constants.dart';
import 'package:watch_app/presentation/get/dialog/detail/dialog_movie_detail_controller.dart';

class DialogMovieDetailView extends GetView<DialogMovieDetailController> {
  const DialogMovieDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                  onTap: () {},
                  child: Stack(
                    children: [
                      Image.network(
                        "$imgUrl500${controller.arguments.backdropPath}",
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        child: Icon(
                          Icons.play_circle_fill_rounded,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text("${controller.arguments.title}"),
                SizedBox(
                  height: 16,
                ),
                Text("${controller.arguments.overview}"),
              ],
            ),
          )),
    );
  }
}
