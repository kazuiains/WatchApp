import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_app/app/config/app_constants.dart';
import 'package:watch_app/presentation/get/dialog/detail/dialog_movie_detail_controller.dart';
import 'package:watch_app/presentation/ui/widgets/base/navigation/base_top_app_bar_view.dart';

class DialogMovieDetailView extends GetView<DialogMovieDetailController> {
  const DialogMovieDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseTopAppBarView.whiteAppBar(context),
      body: Obx(() => SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    Container(
                      child: controller.arguments.backdropPath != null
                          ? Image.network(
                              "$imgUrl500${controller.arguments.backdropPath}",
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              AssetsConstants.imageNoImage,
                              fit: BoxFit.cover,
                            ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: InkWell(
                        onTap: () => controller.onPlay(),
                        child: Image.asset(
                          AssetsConstants.iconPlay,
                          width: 75,
                          height: 75,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 24,
                    left: 16,
                    right: 16,
                    bottom: 8,
                  ),
                  child: Text(
                    "${controller.arguments.title}",
                    style: const TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    left: 16,
                    right: 16,
                    bottom: 32,
                  ),
                  child: Text(
                    "${controller.arguments.overview}",
                    style: const TextStyle(height: 1.5),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
