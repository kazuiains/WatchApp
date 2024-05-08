import 'package:flutter/material.dart';
import 'package:watch_app/app/config/app_colors.dart';

class BaseNavigationBarView {
  static BottomNavigationBar basic({
    Key? key,
    required List<BottomNavigationBarItem> items,
    void Function(int)? onTap,
    int? currentIndex,
    double? elevation,
    BottomNavigationBarType? type,
    Color? fixedColor,
    Color? backgroundColor,
    double? iconSize,
    Color? selectedItemColor,
    Color? unselectedItemColor,
    IconThemeData? selectedIconTheme,
    IconThemeData? unselectedIconTheme,
    double? selectedFontSize,
    double? unselectedFontSize,
    TextStyle? selectedLabelStyle,
    TextStyle? unselectedLabelStyle,
    bool? showSelectedLabels,
    bool? showUnselectedLabels,
    MouseCursor? mouseCursor,
    bool? enableFeedback,
    BottomNavigationBarLandscapeLayout? landscapeLayout,
    bool? useLegacyColorScheme,
  }) {
    return BottomNavigationBar(
      key: key,
      items: items,
      onTap: onTap,
      currentIndex: currentIndex ?? 0,
      elevation: elevation,
      type: type ?? BottomNavigationBarType.fixed,
      fixedColor: fixedColor,
      backgroundColor: backgroundColor ?? Colors.white,
      iconSize: iconSize ?? 24.0,
      selectedItemColor: selectedItemColor ?? AppColors.text,
      unselectedItemColor:
          unselectedItemColor ?? AppColors.text.withOpacity(.40),
      selectedIconTheme: selectedIconTheme,
      unselectedIconTheme: unselectedIconTheme,
      selectedFontSize: selectedFontSize ?? 14.0,
      unselectedFontSize: unselectedFontSize ?? 12.0,
      selectedLabelStyle: selectedLabelStyle,
      unselectedLabelStyle: unselectedLabelStyle,
      showSelectedLabels: showSelectedLabels,
      showUnselectedLabels: showUnselectedLabels ?? false,
      mouseCursor: mouseCursor,
      enableFeedback: enableFeedback,
      landscapeLayout: landscapeLayout,
      useLegacyColorScheme: useLegacyColorScheme ?? true,
    );
  }
}
