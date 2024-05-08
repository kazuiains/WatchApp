import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:watch_app/app/config/app_dimens.dart';
import 'package:watch_app/app/config/styles/text_styles.dart';
import 'package:watch_app/app/config/styles/theme_styles.dart';
import 'package:watch_app/domain/entities/widget/switch_data.dart';
import 'package:watch_app/presentation/ui/widgets/base/text/base_label_view.dart';

class BaseSwitchView {
  static Widget basic({
    String? label,
    TextStyle? labelStyle,
    required List<SwitchData>? items,
    required Widget Function(SwitchData data, int index)? itemBuilder,
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
    required bool value,
    required void Function(bool)? onChanged,
    Color? activeColor,
    Color? activeTrackColor,
    Color? inactiveThumbColor,
    Color? inactiveTrackColor,
    ImageProvider<Object>? activeThumbImage,
    void Function(Object, StackTrace?)? onActiveThumbImageError,
    ImageProvider<Object>? inactiveThumbImage,
    void Function(Object, StackTrace?)? onInactiveThumbImageError,
    MaterialStateProperty<Color?>? thumbColor,
    MaterialStateProperty<Color?>? trackColor,
    MaterialStateProperty<Color?>? trackOutlineColor,
    MaterialStateProperty<Icon?>? thumbIcon,
    MaterialTapTargetSize? materialTapTargetSize,
    DragStartBehavior? dragStartBehavior,
    MouseCursor? mouseCursor,
    Color? focusColor,
    Color? hoverColor,
    MaterialStateProperty<Color?>? overlayColor,
    double? splashRadius,
    FocusNode? focusNode,
    void Function(bool)? onFocusChange,
    bool? autofocus,
    bool? disable,
    bool? customPadding,
    double? leftPadding,
    double? rightPadding,
    double? bottomPadding,
    double? topPadding,
    EdgeInsetsGeometry? padding,
  }) {
    Widget switchButton = ThemeStyles.switchButton(
      child: Switch(
        key: key,
        value: value,
        onChanged: disable ?? false ? null : onChanged,
        activeColor: activeColor,
        activeTrackColor: activeTrackColor,
        inactiveThumbColor: inactiveThumbColor,
        inactiveTrackColor: inactiveTrackColor,
        activeThumbImage: activeThumbImage,
        onActiveThumbImageError: onActiveThumbImageError,
        inactiveThumbImage: inactiveThumbImage,
        onInactiveThumbImageError: onInactiveThumbImageError,
        thumbColor: thumbColor,
        trackColor: trackColor,
        trackOutlineColor: trackOutlineColor,
        thumbIcon: thumbIcon,
        materialTapTargetSize: materialTapTargetSize,
        dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
        mouseCursor: mouseCursor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        overlayColor: overlayColor,
        splashRadius: splashRadius,
        focusNode: focusNode,
        onFocusChange: onFocusChange,
        autofocus: autofocus ?? false,
      ),
    );

    if (customPadding ?? true) {
      return Padding(
        padding: padding ??
            EdgeInsets.only(
              left: rightPadding ?? 0,
              right: leftPadding ?? AppDimens.defaultCustomPaddingSwitch,
              top: topPadding ?? AppDimens.defaultCustomPaddingSwitch,
              bottom: bottomPadding ?? AppDimens.defaultCustomPaddingSwitch,
            ),
        child: SizedBox(
          width: AppDimens.defaultSizeSwitch,
          height: AppDimens.defaultSizeSwitch,
          child: switchButton,
        ),
      );
    } else {
      return switchButton;
    }
  }

  static Widget itemTile({
    Key? key,
    required bool value,
    required void Function(bool)? onChanged,
    Color? activeColor,
    Color? activeTrackColor,
    Color? inactiveThumbColor,
    Color? inactiveTrackColor,
    ImageProvider<Object>? activeThumbImage,
    void Function(Object, StackTrace?)? onActiveThumbImageError,
    ImageProvider<Object>? inactiveThumbImage,
    void Function(Object, StackTrace?)? onInactiveThumbImageError,
    MaterialStateProperty<Color?>? thumbColor,
    MaterialStateProperty<Color?>? trackColor,
    MaterialStateProperty<Color?>? trackOutlineColor,
    MaterialStateProperty<Icon?>? thumbIcon,
    MaterialTapTargetSize? materialTapTargetSize,
    DragStartBehavior? dragStartBehavior,
    MouseCursor? mouseCursor,
    MaterialStateProperty<Color?>? overlayColor,
    double? splashRadius,
    FocusNode? focusNode,
    void Function(bool)? onFocusChange,
    bool? autofocus,
    Color? tileColor,
    Widget? title,
    Widget? subtitle,
    bool? isThreeLine,
    bool? dense,
    EdgeInsetsGeometry? contentPadding,
    Widget? secondary,
    bool? selected,
    ListTileControlAffinity? controlAffinity,
    ShapeBorder? shape,
    Color? selectedTileColor,
    VisualDensity? visualDensity,
    bool? enableFeedback,
    Color? hoverColor,
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
    return ThemeStyles.switchButton(
      setTheme: true,
      removePaddingTitle: removePaddingTitle,
      paddingTitle: paddingTitle,
      child: SwitchListTile(
        key: key,
        value: value,
        onChanged: disable ?? false ? null : onChanged,
        activeColor: activeColor,
        activeTrackColor: activeTrackColor,
        inactiveThumbColor: inactiveThumbColor,
        inactiveTrackColor: inactiveTrackColor,
        activeThumbImage: activeThumbImage,
        onActiveThumbImageError: onActiveThumbImageError,
        inactiveThumbImage: inactiveThumbImage,
        onInactiveThumbImageError: onInactiveThumbImageError,
        thumbColor: thumbColor,
        trackColor: trackColor,
        trackOutlineColor: trackOutlineColor,
        thumbIcon: thumbIcon,
        materialTapTargetSize: materialTapTargetSize,
        dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
        mouseCursor: mouseCursor,
        overlayColor: overlayColor,
        splashRadius: splashRadius,
        focusNode: focusNode,
        onFocusChange: onFocusChange,
        autofocus: autofocus ?? false,
        tileColor: tileColor,
        title: title ??
            Text(
              label ?? "",
              style: labelStyle ??
                  TextStyles.switchItemLabel(
                    color: labelColor,
                  ),
            ),
        subtitle: subLabel != null && subtitle == null
            ? Text(
                subLabel,
                style: subLabelStyle ??
                    TextStyles.switchItemSubLabel(
                      color: subLabelColor,
                    ),
              )
            : subtitle,
        isThreeLine: isThreeLine ?? false,
        dense: dense,
        contentPadding: contentPadding,
        secondary: secondary,
        selected: selected ?? false,
        controlAffinity: controlAffinity ?? ListTileControlAffinity.platform,
        shape: shape,
        selectedTileColor: selectedTileColor,
        visualDensity: visualDensity,
        enableFeedback: enableFeedback,
        hoverColor: hoverColor,
      ),
    );
  }
}
