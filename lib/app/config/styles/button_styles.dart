//TODO: to hold button styles
import 'package:flutter/material.dart';
import 'package:watch_app/app/config/app_colors.dart';
import 'package:watch_app/app/config/app_dimens.dart';

class ButtonStyles {
  static ButtonStyle defaultSnackBar({
    Color? color,
  }) {
    return ButtonStyle(
      overlayColor: MaterialStateProperty.all<Color>(
        color ?? AppColors.defaultSnackBarColor,
      ),
    );
  }

  static defaultDialog({
    Color? rippleColor,
    double height = 48,
  }) {
    return ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsets.all(16),
      ),
      backgroundColor: MaterialStateProperty.all(
        Colors.white,
      ),
      minimumSize: MaterialStateProperty.all(
        Size(
          kMinInteractiveDimension,
          height,
        ),
      ),
      overlayColor: MaterialStateProperty.all<Color>(
        rippleColor ?? AppColors.defaultButtonOverlayColor,
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              AppDimens.roundedSmall,
            ),
          ),
          side: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  static dialogSuccess({
    Color? color,
    Color? rippleColor,
    double height = 48,
  }) {
    return ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(
          horizontal: 0,
          vertical: 0,
        ),
      ),
      backgroundColor: MaterialStateProperty.all(
        color ?? AppColors.primary,
      ),
      minimumSize: MaterialStateProperty.all(
        Size(
          kMinInteractiveDimension,
          height,
        ),
      ),
      overlayColor: MaterialStateProperty.all<Color>(
        rippleColor ?? AppColors.defaultButtonOverlayColor,
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(
              AppDimens.roundedSmall,
            ),
            bottomRight: Radius.circular(
              AppDimens.roundedSmall,
            ),
          ),
          side: BorderSide(
            color: color ?? AppColors.primary,
          ),
        ),
      ),
    );
  }
}
