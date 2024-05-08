import 'package:flutter/material.dart';
import 'package:watch_app/app/config/app_dimens.dart';
import 'package:watch_app/app/config/app_styles.dart';
import 'package:watch_app/domain/entities/widget/checkbox_data.dart';
import 'package:watch_app/presentation/ui/widgets/base/text/base_label_view.dart';

class BaseCheckboxView {
  static Widget basic({
    String? label,
    TextStyle? labelStyle,
    required List<CheckboxData>? items,
    required Widget Function(CheckboxData data, int index)? itemBuilder,
    double? labelMarginTop,
    double? labelMarginBottom,
    double? labelPaddingLeft,
    double? labelPaddingRight,
    EdgeInsetsGeometry? labelPadding,
    bool? useLabelPadding,
  }) {
    List<Widget> children = [];

    if (label != null) {
      children.add(
        BaseLabelView.fieldLabel(
          label: label,
          labelStyle: labelStyle,
          marginTop: labelMarginTop,
          marginBottom: labelMarginBottom,
          paddingLeft: labelPaddingLeft,
          paddingRight: labelPaddingRight,
          padding: labelPadding,
          usePadding: useLabelPadding,
        ),
      );
    }

    if (items != null && itemBuilder != null) {
      for (var i in items) {
        children.add(
          itemBuilder(
            i,
            items.indexOf(i),
          ),
        );
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: children,
    );
  }

  static Widget item({
    Key? key,
    required bool? value,
    bool? tristate,
    required void Function(bool?)? onChanged,
    MouseCursor? mouseCursor,
    Color? activeColor,
    MaterialStateProperty<Color?>? fillColor,
    Color? checkColor,
    Color? focusColor,
    Color? hoverColor,
    MaterialStateProperty<Color?>? overlayColor,
    double? splashRadius,
    MaterialTapTargetSize? materialTapTargetSize,
    VisualDensity? visualDensity,
    FocusNode? focusNode,
    bool? autofocus,
    OutlinedBorder? shape,
    BorderSide? side,
    bool? isError,
    bool? disable,
    bool? customPadding,
    double? leftPadding,
    double? rightPadding,
    double? bottomPadding,
    double? topPadding,
    EdgeInsetsGeometry? padding,
  }) {
    Widget checkbox = ThemeStyles.checkbox(
      child: Checkbox(
        key: key,
        value: value,
        tristate: tristate ?? false,
        onChanged: disable ?? false ? null : onChanged,
        mouseCursor: mouseCursor,
        activeColor: activeColor,
        fillColor: fillColor,
        checkColor: checkColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        overlayColor: overlayColor,
        splashRadius: splashRadius,
        materialTapTargetSize: materialTapTargetSize,
        visualDensity: visualDensity,
        focusNode: focusNode,
        autofocus: autofocus ?? false,
        shape: shape,
        side: side,
        isError: isError ?? false,
      ),
    );

    if (customPadding ?? true) {
      return Padding(
        padding: padding ??
            EdgeInsets.only(
              left: rightPadding ?? 0,
              right: leftPadding ?? AppDimens.defaultCustomPaddingCheckbox,
              top: topPadding ?? AppDimens.defaultCustomPaddingCheckbox,
              bottom: bottomPadding ?? AppDimens.defaultCustomPaddingCheckbox,
            ),
        child: SizedBox(
          width: AppDimens.defaultSizeCheckbox,
          height: AppDimens.defaultSizeCheckbox,
          child: checkbox,
        ),
      );
    } else {
      return checkbox;
    }
  }

  static Widget itemTile({
    Key? key,
    required bool? value,
    required void Function(bool?)? onChanged,
    MouseCursor? mouseCursor,
    Color? activeColor,
    MaterialStateProperty<Color?>? fillColor,
    Color? checkColor,
    Color? hoverColor,
    MaterialStateProperty<Color?>? overlayColor,
    double? splashRadius,
    MaterialTapTargetSize? materialTapTargetSize,
    VisualDensity? visualDensity,
    FocusNode? focusNode,
    bool? autofocus,
    ShapeBorder? shape,
    BorderSide? side,
    bool? isError,
    bool? enabled,
    Color? tileColor,
    Widget? title,
    Widget? subtitle,
    bool? isThreeLine,
    bool? dense,
    Widget? secondary,
    bool? selected,
    ListTileControlAffinity? controlAffinity,
    EdgeInsetsGeometry? contentPadding,
    bool? tristate,
    OutlinedBorder? checkboxShape,
    Color? selectedTileColor,
    void Function(bool)? onFocusChange,
    bool? enableFeedback,
    String? label,
    TextStyle? labelStyle,
    Color? labelColor,
    String? subLabel,
    TextStyle? subLabelStyle,
    Color? subLabelColor,
    bool? removePaddingTitle,
    double? paddingTitle,
  }) {
    return ThemeStyles.checkbox(
      setTheme: true,
      removePaddingTitle: removePaddingTitle,
      paddingTitle: paddingTitle,
      child: CheckboxListTile(
        key: key,
        value: value,
        tristate: tristate ?? false,
        onChanged: onChanged,
        mouseCursor: mouseCursor,
        activeColor: activeColor,
        fillColor: fillColor,
        checkColor: checkColor,
        hoverColor: hoverColor,
        overlayColor: overlayColor,
        splashRadius: splashRadius,
        materialTapTargetSize: materialTapTargetSize,
        visualDensity: visualDensity,
        focusNode: focusNode,
        autofocus: autofocus ?? false,
        shape: shape,
        side: side,
        isError: isError ?? false,
        enabled: enabled,
        tileColor: tileColor,
        title: title ??
            Text(
              label ?? "",
              style: labelStyle ??
                  TextStyles.checkboxItemLabel(
                    color: labelColor,
                  ),
            ),
        subtitle: subLabel != null && subtitle == null
            ? Text(
                subLabel,
                style: subLabelStyle ??
                    TextStyles.checkboxItemSubLabel(
                      color: subLabelColor,
                    ),
              )
            : subtitle,
        isThreeLine: isThreeLine ?? false,
        dense: dense,
        secondary: secondary,
        selected: selected ?? false,
        controlAffinity: controlAffinity ?? ListTileControlAffinity.platform,
        contentPadding: contentPadding,
        checkboxShape: checkboxShape,
        selectedTileColor: selectedTileColor,
        onFocusChange: onFocusChange,
        enableFeedback: enableFeedback,
      ),
    );
  }
}
