import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:watch_app/app/config/app_colors.dart';
import 'package:watch_app/app/config/localizations/translation_key.dart';

class BaseLoadingView {
  static init() {
    EasyLoading.instance
      ..indicatorType = EasyLoadingIndicatorType.ring
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = AppColors.primary
      ..backgroundColor = Colors.white
      ..indicatorColor = AppColors.primary
      ..textColor = AppColors.text
      ..maskColor = Colors.white.withOpacity(0.5)
      ..userInteractions = false
      ..dismissOnTap = false
      ..animationStyle = EasyLoadingAnimationStyle.scale
      ..maskType = EasyLoadingMaskType.black;
  }

  static show({
    String? text,
    EasyLoadingMaskType? maskType,
  }) async {
    await EasyLoading.show(
      maskType: maskType,
      status: text ?? generalLoading.tr,
    );
  }

  static progressShow({
    String? text,
    double? total,
    double? progress,
    double? totalProgress,
  }) {
    double loadingProgress = totalProgress ?? 0;

    if (total != null && progress != null) {
      loadingProgress = progress / total;
    }

    double percentage = loadingProgress * 100;

    int withoutComa = percentage.toInt();
    String percentageText = "$withoutComa%";

    EasyLoading.showProgress(
      loadingProgress,
      status: "${text ?? generalDownloading.tr}\n$percentageText",
    );
  }

  static successShow({
    String? text,
  }) async {
    await EasyLoading.showSuccess(
      text ?? generalDownloadedComplete.tr,
    );
  }

  static dismiss() async {
    await EasyLoading.dismiss();
  }
}
