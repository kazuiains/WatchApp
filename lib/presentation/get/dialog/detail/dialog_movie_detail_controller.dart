import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_app/domain/entities/base/base_request.dart';
import 'package:watch_app/domain/entities/base/base_response.dart';
import 'package:watch_app/domain/entities/feature/movie/movie_feature.dart';
import 'package:watch_app/domain/use_cases/network/app/movie_detail_use_case.dart';
import 'package:watch_app/presentation/get/base/base_controller.dart';
import 'package:watch_app/presentation/get/dialog/play/dialog_play_binding.dart';
import 'package:watch_app/presentation/ui/widgets/custom/dialog/dialog_play_view.dart';

class DialogMovieDetailController extends BaseController {
  final MovieDetailUseCase useCase;

  DialogMovieDetailController(
    this.useCase,
  );

  final _arguments = MovieFeature().obs;
  final _detail = MovieFeature().obs;

  bool isLoading = false;

  setArguments(MovieFeature value) {
    _arguments.value = value;
  }

  setDetail(MovieFeature value) {
    _detail.value = value;
  }

  MovieFeature get arguments => _arguments.value;

  MovieFeature get detail => _detail.value;

  @override
  void onInit() {
    super.onInit();
    _initArgument();
    isLoading = true;
    onCall();
  }

  @override
  onCall({
    BuildContext? context,
    int? index,
    bool? pageScope,
    bool? hideError,
    bool? hideFailed,
    bool? useBasicHandleFailed,
  }) async {
    dynamicHandleResponse<BaseResponse>(
      useCase.execute(
        BaseRequest(id: arguments.id?.toString(), appendToResponse: "images,videos,similar,reviews"),
      ),
      success: (response) {
        var data = response.data;
        if (data is MovieFeature) {
          var init = arguments;
          setArguments(
            init.copyWith(
              overview: data.overview,
              backdropPath: data.backdropPath,
            ),
          );
          setDetail(data);
        }
        isLoading = false;
      },
      failed: () {
        isLoading = false;
      },
    );
  }

  _initArgument() async {
    var data = Get.arguments;
    if (data != null) {
      setArguments(data);
    }
  }

  onPlay() {
    if (!isLoading) {
      print("video size: ${detail.videos?.length}");
      print("video no 1: ${detail.videos?.first}");
      if(detail.videos != null && detail.videos!.length > 0){
        Get.to(
          const DialogPlayView(),
          binding: DialogPlayBinding(),
          arguments: "${detail.videos!.first.key}",
          fullscreenDialog: true,
          transition: Transition.fade,
        );
      }else{
        noTitleSnackBar(message: "Maaf video tidak ditemukan");
      }
    } else {
      noTitleSnackBar(message: "Sedang memuat detail video. coba beberapa saat lagi");
    }
  }
}
