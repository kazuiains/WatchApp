import 'package:watch_app/app/utils/helper/preference_helper.dart';
import 'package:flutter/material.dart';
import 'package:watch_app/app/config/styles/theme_styles.dart';

class BaseDatePickersView {
  static Future<DateTime?> basic({
    required BuildContext context,
    DateTime? initialDate,
    DateTime? firstDate,
    DateTime? lastDate,
    DateTime? currentDate,
    DatePickerEntryMode initialEntryMode = DatePickerEntryMode.calendar,
    bool Function(DateTime)? selectableDayPredicate,
    String? label,
    String? cancelText,
    String? confirmText,
    Locale? locale,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    TextDirection? textDirection,
    Widget Function(BuildContext, Widget?)? builder,
    DatePickerMode initialDatePickerMode = DatePickerMode.day,
    String? errorFormatText,
    String? errorInvalidText,
    String? fieldHintText,
    String? fieldLabelText,
    TextInputType? keyboardType,
    Offset? anchorPoint,
    void Function(DatePickerEntryMode)? onDatePickerModeChange,
  }) async {
    DateTime current = DateTime.now();
    return await showDatePicker(
      context: context,
      initialDate: initialDate ?? current,
      firstDate: firstDate ??
          DateTime(
            current.year - 150,
            1,
          ),
      lastDate: lastDate ??
          DateTime(
            current.year + 50,
            12,
          ),
      currentDate: currentDate ?? current,
      initialEntryMode: initialEntryMode,
      selectableDayPredicate: selectableDayPredicate,
      helpText: label,
      cancelText: cancelText,
      confirmText: confirmText,
      locale: locale ?? PreferenceHelper.language(),
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      textDirection: textDirection,
      initialDatePickerMode: initialDatePickerMode,
      errorFormatText: errorFormatText,
      errorInvalidText: errorInvalidText,
      fieldHintText: fieldHintText,
      fieldLabelText: fieldLabelText,
      keyboardType: keyboardType,
      anchorPoint: anchorPoint,
      onDatePickerModeChange: onDatePickerModeChange,
      builder: builder ??
          (context, child) {
            return ThemeStyles.datePicker(
              child: child,
            );
          },
    );
  }

  static Future<DateTimeRange?> range({
    required BuildContext context,
    DateTimeRange? initialDateRange,
    DateTime? firstDate,
    DateTime? lastDate,
    DateTime? currentDate,
    DatePickerEntryMode initialEntryMode = DatePickerEntryMode.calendar,
    String? label,
    String? cancelText,
    String? confirmText,
    String? saveText,
    String? errorFormatText,
    String? errorInvalidText,
    String? errorInvalidRangeText,
    String? fieldStartHintText,
    String? fieldEndHintText,
    String? fieldStartLabelText,
    String? fieldEndLabelText,
    Locale? locale,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    TextDirection? textDirection,
    Widget Function(BuildContext, Widget?)? builder,
    Offset? anchorPoint,
    TextInputType keyboardType = TextInputType.datetime,
  }) async {
    DateTime current = DateTime.now();
    return await showDateRangePicker(
      context: context,
      initialDateRange: initialDateRange,
      firstDate: firstDate ??
          DateTime(
            current.year - 150,
            1,
          ),
      lastDate: lastDate ??
          DateTime(
            current.year + 50,
            12,
          ),
      currentDate: currentDate ?? current,
      initialEntryMode: initialEntryMode,
      helpText: label,
      cancelText: cancelText,
      confirmText: confirmText,
      saveText: saveText,
      errorFormatText: errorFormatText,
      errorInvalidText: errorInvalidText,
      errorInvalidRangeText: errorInvalidRangeText,
      fieldStartHintText: fieldStartHintText,
      fieldEndHintText: fieldEndHintText,
      fieldStartLabelText: fieldStartLabelText,
      fieldEndLabelText: fieldEndLabelText,
      locale: locale ?? PreferenceHelper.language(),
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      textDirection: textDirection,
      anchorPoint: anchorPoint,
      keyboardType: keyboardType,
      builder: builder ??
          (context, child) {
            return ThemeStyles.datePicker(
              child: child,
            );
          },
    );
  }
}
