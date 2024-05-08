import 'package:flutter/material.dart';
import 'package:watch_app/app/config/app_dimens.dart';
import 'package:watch_app/app/config/styles/text_styles.dart';
import 'package:watch_app/app/config/styles/theme_styles.dart';
import 'package:watch_app/domain/entities/widget/radio_button_data.dart';
import 'package:watch_app/presentation/ui/widgets/base/text/base_label_view.dart';

class BaseRadioButtonView {
  static Widget basic({
    String? label,
    TextStyle? labelStyle,
    required List<RadioButtonData>? items,
    required Widget Function(RadioButtonData data, int index)? itemBuilder,
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
    required dynamic value,
    required dynamic groupValue,
    required void Function(dynamic)? onChanged,
    MouseCursor? mouseCursor,
    bool? toggleable,
    Color? activeColor,
    MaterialStateProperty<Color?>? fillColor,
    Color? focusColor,
    Color? hoverColor,
    MaterialStateProperty<Color?>? overlayColor,
    double? splashRadius,
    MaterialTapTargetSize? materialTapTargetSize,
    VisualDensity? visualDensity,
    FocusNode? focusNode,
    bool? autofocus,
    bool? disable,
    bool? customPadding,
    double? leftPadding,
    double? rightPadding,
    double? bottomPadding,
    double? topPadding,
    EdgeInsetsGeometry? padding,
  }) {
    Widget radioButton = ThemeStyles.radioButton(
      child: Radio<dynamic>(
        key: key,
        value: value,
        groupValue: groupValue,
        onChanged: disable ?? false ? null : onChanged,
        mouseCursor: mouseCursor,
        toggleable: toggleable ?? false,
        activeColor: activeColor,
        fillColor: fillColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        overlayColor: overlayColor,
        splashRadius: splashRadius,
        materialTapTargetSize: materialTapTargetSize,
        visualDensity: visualDensity,
        focusNode: focusNode,
        autofocus: autofocus ?? false,
      ),
    );

    if (customPadding ?? true) {
      return Padding(
        padding: padding ??
            EdgeInsets.only(
              left: rightPadding ?? 0,
              right: leftPadding ?? AppDimens.defaultCustomPaddingRadioButton,
              top: topPadding ?? AppDimens.defaultCustomPaddingRadioButton,
              bottom:
                  bottomPadding ?? AppDimens.defaultCustomPaddingRadioButton,
            ),
        child: SizedBox(
          width: AppDimens.defaultSizeRadioButton,
          height: AppDimens.defaultSizeRadioButton,
          child: radioButton,
        ),
      );
    } else {
      return radioButton;
    }
  }

  static Widget itemTile({
    Key? key,
    required dynamic value,
    required dynamic groupValue,
    required void Function(dynamic)? onChanged,
    MouseCursor? mouseCursor,
    bool? toggleable,
    Color? activeColor,
    MaterialStateProperty<Color?>? fillColor,
    Color? hoverColor,
    MaterialStateProperty<Color?>? overlayColor,
    double? splashRadius,
    MaterialTapTargetSize? materialTapTargetSize,
    Widget? title,
    Widget? subtitle,
    bool? isThreeLine,
    bool? dense,
    Widget? secondary,
    bool? selected,
    ListTileControlAffinity? controlAffinity,
    bool? autofocus,
    EdgeInsetsGeometry? contentPadding,
    ShapeBorder? shape,
    Color? tileColor,
    Color? selectedTileColor,
    VisualDensity? visualDensity,
    FocusNode? focusNode,
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
    bool? disable,
  }) {
    return ThemeStyles.radioButton(
      setTheme: true,
      removePaddingTitle: removePaddingTitle,
      paddingTitle: paddingTitle,
      child: RadioListTile<dynamic>(
        key: key,
        value: value,
        groupValue: groupValue,
        onChanged: disable ?? false ? null : onChanged,
        mouseCursor: mouseCursor,
        toggleable: toggleable ?? false,
        activeColor: activeColor,
        fillColor: fillColor,
        hoverColor: hoverColor,
        overlayColor: overlayColor,
        splashRadius: splashRadius,
        materialTapTargetSize: materialTapTargetSize,
        title: title ??
            Text(
              label ?? "",
              style: labelStyle ??
                  TextStyles.radioButtonItemLabel(
                    color: labelColor,
                  ),
            ),
        subtitle: subLabel != null && subtitle == null
            ? Text(
                subLabel,
                style: subLabelStyle ??
                    TextStyles.radioButtonItemSubLabel(
                      color: subLabelColor,
                    ),
              )
            : subtitle,
        isThreeLine: isThreeLine ?? false,
        dense: dense,
        secondary: secondary,
        selected: selected ?? false,
        controlAffinity: controlAffinity ?? ListTileControlAffinity.trailing,
        autofocus: autofocus ?? false,
        contentPadding: contentPadding,
        shape: shape,
        tileColor: tileColor,
        selectedTileColor: selectedTileColor,
        visualDensity: visualDensity,
        focusNode: focusNode,
        onFocusChange: onFocusChange,
        enableFeedback: enableFeedback,
      ),
    );
  }
}
