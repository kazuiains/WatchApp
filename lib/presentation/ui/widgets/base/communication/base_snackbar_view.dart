import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_app/app/config/app_colors.dart';
import 'package:watch_app/app/config/app_styles.dart';
import 'package:watch_app/app/config/localizations/translation_key.dart';
import 'package:watch_app/app/types/snack_bar_type.dart';
import 'package:watch_app/presentation/ui/widgets/base/actions/base_buttons_view.dart';
import 'package:watch_app/presentation/ui/widgets/base/containment/base_spacer_view.dart';

class BaseSnackBarView {
  static basic({
    SnackBarType snackBarType = SnackBarType.success,
    String? title,
    required String message,
    String? buttonText,
    Function? onClick,
    IconData? icon,
    Color? color,
  }) {
    Get.snackbar(
      title ?? snackBarType.title,
      "",
      messageText: Text(
        message,
        style: TextStyles.snackBarButtonMessage,
      ),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.white,
      colorText: AppColors.text[700],
      margin: const EdgeInsets.all(10),
      borderRadius: 0,
      icon: Icon(
        icon ?? snackBarType.icon,
        color: color ?? snackBarType.color,
      ),
      leftBarIndicatorColor: color ?? snackBarType.color,
      mainButton: BaseButtonView.flatTextButton(
        onPressed: () {
          Get.closeCurrentSnackbar();
          if (onClick != null) {
            onClick();
          }
        },
        style: ButtonStyles.defaultSnackBar(
          color: color ?? snackBarType.color,
        ),
        label: buttonText ?? snackBarTextClose.tr,
        textStyle: TextStyles.snackBarButtonTitle,
      ),
    );
  }

  static basicWithOutTitle({
    SnackBarType snackBarType = SnackBarType.success,
    required String message,
    Color? color,
    SnackPosition? snackPosition,
    bool primary = true,
  }) {
    Get.snackbar(
      "",
      "",
      titleText: Container(),
      messageText: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            message,
            style: TextStyles.snackBarWithOutTitleButtonMessage,
          ),
          BaseSpacerView.h10,
        ],
      ),
      snackPosition: snackPosition ?? SnackPosition.TOP,
      backgroundColor:
          primary ? AppColors.primary : color ?? snackBarType.color,
      colorText: AppColors.whiteText,
      margin: const EdgeInsets.all(10),
      borderRadius: 8,
      mainButton: BaseButtonView.flatTextButton(
        onPressed: () => Get.closeCurrentSnackbar(),
        style: ButtonStyles.defaultSnackBar(
          color: AppColors.white25,
        ),
        label: snackBarTextClose.tr,
        textStyle: TextStyles.snackBarWithOutTitleButtonTitle,
      ),
    );
  }
}
