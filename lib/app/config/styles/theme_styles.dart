//TODO: to hold box styles
import 'package:flutter/material.dart';
import 'package:watch_app/app/config/app_colors.dart';
import 'package:watch_app/app/config/styles/system_styles.dart';
import 'package:watch_app/app/config/styles/text_styles.dart';
import 'package:watch_app/presentation/ui/widgets/base/containment/base_spacer_view.dart';

class ThemeStyles {
  /// Theme style for main app
  static ThemeData appTheme() {
    return ThemeData(
      useMaterial3: false,
      primarySwatch: AppColors.primary,
      primaryColor: AppColors.primary,
      primaryColorLight: AppColors.primaryLight,
      primaryColorDark: AppColors.primaryDark,
      scaffoldBackgroundColor: AppColors.bodyColor,
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemStyles.systemOverlayStyle(),
      ),
    );
  }

  /// Theme style for widget Date Picker
  static Theme datePicker({
    Widget? child,
  }) {
    return Theme(
      data: ThemeData(
        useMaterial3: false,
        primarySwatch: AppColors.defaultDatePickerColor,
        primaryColor: AppColors.defaultDatePickerColor,
        primaryColorLight: AppColors.defaultDatePickerColor,
        primaryColorDark: AppColors.defaultDatePickerColor,
      ),
      child: child ?? Container(),
    );
  }

  /// Theme style for widget Time Picker
  static Theme timePicker({
    Widget? child,
  }) {
    return Theme(
      data: ThemeData(
        useMaterial3: false,
        primarySwatch: AppColors.defaultDatePickerColor,
        primaryColor: AppColors.defaultDatePickerColor,
        primaryColorLight: AppColors.defaultDatePickerColor,
        primaryColorDark: AppColors.defaultDatePickerColor,
      ),
      child: child ?? Container(),
    );
  }

  /// Theme style for widget Check Box
  static Theme checkbox({
    Widget? child,
    bool? removePaddingTitle,
    double? paddingTitle,
    bool setTheme = false,
  }) {
    return Theme(
      data: ThemeData(
        useMaterial3: false,
        unselectedWidgetColor: AppColors.defaultCheckboxEnableColor,
        primarySwatch: AppColors.defaultCheckboxSelectedColor,
        disabledColor: AppColors.defaultCheckboxDisableColor,
      ),
      child: setTheme
          ? ListTileTheme(
              horizontalTitleGap: removePaddingTitle ?? true ? 0 : paddingTitle,
              child: child ?? Container(),
            )
          : child ?? Container(),
    );
  }

  /// Theme style for widget Radio Button
  static Theme radioButton({
    Widget? child,
    bool? removePaddingTitle,
    double? paddingTitle,
    bool setTheme = false,
  }) {
    return Theme(
      data: ThemeData(
        useMaterial3: false,
        unselectedWidgetColor: AppColors.defaultRadioButtonEnableColor,
        primarySwatch: AppColors.defaultRadioButtonSelectedColor,
        disabledColor: AppColors.defaultRadioButtonDisableColor,
      ),
      child: setTheme
          ? ListTileTheme(
              horizontalTitleGap: removePaddingTitle ?? true ? 0 : paddingTitle,
              child: child ?? Container(),
            )
          : child ?? Container(),
    );
  }

  /// Theme style for widget Switch Button
  static Theme switchButton({
    Widget? child,
    bool? removePaddingTitle,
    double? paddingTitle,
    bool setTheme = false,
  }) {
    return Theme(
      data: ThemeData(
        useMaterial3: false,
        unselectedWidgetColor: AppColors.defaultRadioButtonEnableColor,
        primarySwatch: AppColors.defaultRadioButtonSelectedColor,
        disabledColor: AppColors.defaultRadioButtonDisableColor,
      ),
      child: setTheme
          ? ListTileTheme(
              horizontalTitleGap: removePaddingTitle ?? true ? 0 : paddingTitle,
              child: child ?? Container(),
            )
          : child ?? Container(),
    );
  }

  /// Theme style for widget menu third party
  /// note
  /// if use material app v3
  /// change
  /// titleMedium: const TextStyle(
  ///     color: Colors.red, // <-- TextFormField input color
  /// ),
  /// to
  /// bodyLarge: const TextStyle(
  ///     color: Colors.red, // <-- TextFormField input color
  /// ),
  static Theme menuTp({
    Widget? child,
    EdgeInsetsGeometry? contentPadding,
    double borderSize = 4,
    Color? enableBorderColor,
    Color? focusedErrorBorderColor,
    Color? errorBorderColor,
    Color? focusBorderColor,
    Color? disableBorderColor,
    Color? fillColor,
    Color? hintColor,
    TextStyle? hintStyle,
    TextStyle? labelStyle,
    TextStyle? inputStyle,
  }) {
    return Theme(
      data: ThemeData(
        useMaterial3: false,
        primarySwatch: AppColors.primary,
        primaryColor: AppColors.primary,
        primaryColorLight: AppColors.primaryLight,
        primaryColorDark: AppColors.primaryDark,
        scaffoldBackgroundColor: AppColors.bodyColor,
        inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              contentPadding ?? BaseSpacerView.textFieldContentPadding,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              borderSize,
            ),
            borderSide: BorderSide(
              color: enableBorderColor ??
                  AppColors.defaultTextFieldEnableBorderColor,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              borderSize,
            ),
            borderSide: BorderSide(
              color: focusedErrorBorderColor ??
                  AppColors.defaultTextFieldErrorBorderColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              borderSize,
            ),
            borderSide: BorderSide(
              color: errorBorderColor ??
                  AppColors.defaultTextFieldErrorBorderColor,
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
              color: focusBorderColor ??
                  AppColors.defaultTextFieldFocusBorderColor,
            ),
          ),
          isDense: true,
          fillColor: fillColor ?? Colors.white,
          filled: true,
          hintStyle: hintStyle ??
              TextStyles.basicTextFieldHintText(
                color: hintColor,
              ),
          labelStyle: labelStyle,
        ),
        textTheme: TextTheme(
          titleMedium: inputStyle ?? TextStyles.basicTextFieldText,
        ),
      ),
      child: child ?? Container(),
    );
  }

  /// Theme style for widget Text Field. text field circle icon type
  static Theme textFieldCircleIcon({
    Widget? child,
  }) {
    return Theme(
      data: ThemeData(
        useMaterial3: false,
        brightness: Brightness.dark,
        primarySwatch: AppColors.whiteText,
      ),
      child: child ?? Container(),
    );
  }


  /// Theme style for widget Navigation Drawer
  static Theme itemNavigationDrawer({
    Widget? child,
    bool? removePaddingTitle,
    double? paddingTitle,
  }) {
    return Theme(
      data: ThemeData(
        useMaterial3: false,
        unselectedWidgetColor: AppColors.defaultCheckboxEnableColor,
        primarySwatch: AppColors.defaultCheckboxSelectedColor,
        disabledColor: AppColors.defaultCheckboxDisableColor,
      ),
      child: ListTileTheme(
        horizontalTitleGap: removePaddingTitle ?? true ? 0 : paddingTitle,
        child: child ?? Container(),
      ),
    );
  }
}
