//TODO: to hold box styles
import 'package:flutter/material.dart';
import 'package:watch_app/app/config/app_colors.dart';

class ShapeStyles {
  static ShapeBorder rounded({
    BorderRadiusGeometry? borderRadius,
    double? radiusSize,
    Color? color,
    double? borderSize,
    bool withBorder = false,
  }) {
    return RoundedRectangleBorder(
      borderRadius: borderRadius ?? BorderRadius.circular(radiusSize ?? 4),
      side: withBorder
          ? BorderSide(
              color: color ?? AppColors.defaultBorderButtonBorderColor,
              width: borderSize ?? 0.5,
            )
          : BorderSide.none,
    );
  }
}
