//TODO: to hold box styles
import 'package:flutter/material.dart';
import 'package:watch_app/app/config/app_colors.dart';

class BoxStyles {
  static Decoration bottomNavFloating({
    BorderRadius? borderRadius,
    double? radiusSize,
    Color? shadowColor,
    double? spreadRadius,
    double? blurRadius,
    Offset? offset,
    Color? color,
  }) {
    return BoxDecoration(
      borderRadius: borderRadius ??
          BorderRadius.all(
            Radius.circular(radiusSize ?? 8),
          ),
      boxShadow: [
        BoxShadow(
          color: shadowColor ?? Colors.grey.withOpacity(0.10),
          spreadRadius: spreadRadius ?? 1,
          blurRadius: blurRadius ?? 10,
          offset: offset ?? const Offset(0, 0), // changes position of shadow
        ),
      ],
      color: color,
    );
  }

  static Decoration primaryGradient() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: AppColors.primaryBackgroundGradientColor,
        tileMode: TileMode.mirror,
      ),
    );
  }
}
