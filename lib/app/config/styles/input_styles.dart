//TODO: to hold input styles
import 'package:flutter/material.dart';
import 'package:watch_app/app/config/app_colors.dart';
import 'package:watch_app/app/config/app_styles.dart';
import 'package:watch_app/presentation/ui/widgets/base/containment/base_spacer_view.dart';

class InputStyles {
  static InputDecoration fieldBasic({
    EdgeInsetsGeometry? contentPadding,
    double borderSize = 4,
    Color? enableBorderColor,
    Color? errorBorderColor,
    Color? focusBorderColor,
    Color? disableBorderColor,
    Color? fillColor,
    Color? hintColor,
    Color? labelColor,
    TextStyle? hintStyle,
    TextStyle? labelStyle,
    String? hint,
    String? label,
    Widget? suffixIcon,
    Widget? prefixIcon,
    String? counterText,
  }) {
    return InputDecoration(
      counterText: counterText,
      contentPadding: contentPadding ?? BaseSpacerView.textFieldContentPadding,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          borderSize,
        ),
        borderSide: BorderSide(
          color:
              enableBorderColor ?? AppColors.defaultTextFieldEnableBorderColor,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          borderSize,
        ),
        borderSide: BorderSide(
          color: errorBorderColor ?? AppColors.defaultTextFieldErrorBorderColor,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          borderSize,
        ),
        borderSide: BorderSide(
          color: errorBorderColor ?? AppColors.defaultTextFieldErrorBorderColor,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          borderSize,
        ),
        borderSide: BorderSide(
          color: disableBorderColor ??
              AppColors.defaultTextFieldDisableBorderColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          borderSize,
        ),
        borderSide: BorderSide(
          color: focusBorderColor ?? AppColors.defaultTextFieldFocusBorderColor,
        ),
      ),
      isDense: true,
      fillColor: fillColor ?? Colors.white,
      filled: true,
      labelText: label,
      labelStyle: labelStyle ??
          TextStyles.basicTextFieldLabelText(
            color: labelColor,
          ),
      hintText: hint,
      hintStyle: hintStyle ??
          TextStyles.basicTextFieldHintText(
            color: hintColor,
          ),
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
    );
  }
}
