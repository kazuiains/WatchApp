import 'package:watch_app/app/config/app_colors.dart';
import 'package:watch_app/app/config/app_styles.dart';
import 'package:watch_app/app/config/localizations/translation_key.dart';
import 'package:watch_app/presentation/ui/widgets/base/actions/base_buttons_view.dart';
import 'package:watch_app/presentation/ui/widgets/base/containment/base_spacer_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseBottomSheetView {
  static Future basic({
    required String image,
    required String title,
    required String message,
    String? textYesButton,
    String? textNoButton,
    BorderRadiusGeometry? imageBorderRadius,
    BorderRadiusGeometry? contentBorderRadius,
    Function? onYes,
    Function? onNo,
  }) async {
    return Get.bottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: ShapeStyles.rounded(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: ClipRRect(
              borderRadius: imageBorderRadius ??
                  const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(
              16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title.tr,
                  style: TextStyles.bottomSheetTitle,
                ),
                BaseSpacerView.heightSmall,
                Text(
                  message.tr,
                  style: TextStyles.bottomSheetDescription,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BaseButtonView.flatButton(
                  label: textNoButton ?? bottomSheetTextNotReady.tr,
                  textStyle: TextStyles.bottomSheetButtonText(
                    color: AppColors.primary,
                  ),
                  radiusSize: 15,
                  color: AppColors.primary.withOpacity(.1),
                  onPressed: () {
                    if (onNo != null) {
                      onNo();
                    } else {
                      Get.back(result: false);
                    }
                  },
                ),
                BaseSpacerView.heightSmall,
                BaseButtonView.flatButton(
                  label: textYesButton ?? bottomSheetTextStartNow.tr,
                  textStyle: TextStyles.bottomSheetButtonText(),
                  radiusSize: 15,
                  onPressed: () {
                    if (onYes != null) {
                      onYes();
                    } else {
                      Get.back(result: true);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
