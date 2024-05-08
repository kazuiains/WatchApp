import 'package:flutter/material.dart';
import 'package:watch_app/app/config/app_colors.dart';

class BaseDividerView {
  static Widget basic({
    Key? key,
    double? height,
    double? width,
    double thickness = 0.3,
    double? indent,
    double? endIndent,
    Color? color,
    bool vertical = false,
  }) {
    if (vertical) {
      return VerticalDivider(
        key: key,
        width: width,
        thickness: thickness,
        indent: indent,
        endIndent: endIndent,
        color: color ?? AppColors.defaultDividerColor,
      );
    } else {
      return Divider(
        key: key,
        height: height,
        thickness: thickness,
        indent: indent,
        endIndent: endIndent,
        color: color ?? AppColors.defaultDividerColor,
      );
    }
  }
}
