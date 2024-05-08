import 'package:flutter/material.dart';
import 'package:watch_app/presentation/ui/widgets/custom/permission/simple_permission.dart';

class BasePermissionView {
  static Widget simple({
    Key? key,
    Color? backgroundColor,
    required String iconFileAsset,
    required String title,
    required String description,
    String? titleButton,
    dynamic Function()? onPressed,
    double radiusSize = 5,
    Color? titleColor,
    Color? descriptionColor,
    bool denied = false,
  }) {
    return SimplePermission(
      key: key,
      backgroundColor: backgroundColor,
      iconFileAsset: iconFileAsset,
      title: title,
      description: description,
      titleButton: titleButton,
      onPressed: onPressed,
      radiusSize: radiusSize,
      titleColor: titleColor,
      descriptionColor: descriptionColor,
      denied: denied,
    );
  }
}
