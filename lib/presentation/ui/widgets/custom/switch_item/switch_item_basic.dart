import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:watch_app/app/config/styles/text_styles.dart';
import 'package:watch_app/domain/entities/widget/switch_data.dart';
import 'package:watch_app/presentation/ui/widgets/base/selection/base_switch_view.dart';

class SwitchItemBasic extends StatelessWidget {
  final SwitchData? data;
  final void Function(bool)? onChanged;
  final Color? activeColor;
  final Color? activeTrackColor;
  final Color? inactiveThumbColor;
  final Color? inactiveTrackColor;
  final ImageProvider<Object>? activeThumbImage;
  final void Function(Object, StackTrace?)? onActiveThumbImageError;
  final ImageProvider<Object>? inactiveThumbImage;
  final void Function(Object, StackTrace?)? onInactiveThumbImageError;
  final MaterialStateProperty<Color?>? thumbColor;
  final MaterialStateProperty<Color?>? trackColor;
  final MaterialStateProperty<Color?>? trackOutlineColor;
  final MaterialStateProperty<Icon?>? thumbIcon;
  final MaterialTapTargetSize? materialTapTargetSize;
  final DragStartBehavior? dragStartBehavior;
  final MouseCursor? mouseCursor;
  final Color? focusColor;
  final Color? hoverColor;
  final MaterialStateProperty<Color?>? overlayColor;
  final double? splashRadius;
  final FocusNode? focusNode;
  final void Function(bool)? onFocusChange;
  final bool? autofocus;
  final TextStyle? labelStyle;
  final Color? labelColor;
  final bool? disable;
  final bool? customPadding;
  final double? leftPadding;
  final double? rightPadding;
  final double? bottomPadding;
  final double? topPadding;
  final EdgeInsetsGeometry? padding;

  const SwitchItemBasic({
    super.key,
    required this.data,
    required this.onChanged,
    this.activeColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.activeThumbImage,
    this.onActiveThumbImageError,
    this.inactiveThumbImage,
    this.onInactiveThumbImageError,
    this.thumbColor,
    this.trackColor,
    this.trackOutlineColor,
    this.thumbIcon,
    this.materialTapTargetSize,
    this.dragStartBehavior,
    this.mouseCursor,
    this.focusColor,
    this.hoverColor,
    this.overlayColor,
    this.splashRadius,
    this.focusNode,
    this.onFocusChange,
    this.autofocus,
    this.labelStyle,
    this.labelColor,
    this.disable,
    this.customPadding,
    this.leftPadding,
    this.rightPadding,
    this.bottomPadding,
    this.topPadding,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BaseSwitchView.item(
          key: key,
          value: data?.value,
          onChanged: onChanged,
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
          dragStartBehavior: dragStartBehavior,
          mouseCursor: mouseCursor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          overlayColor: overlayColor,
          splashRadius: splashRadius,
          focusNode: focusNode,
          onFocusChange: onFocusChange,
          autofocus: autofocus,
          disable: disable,
          customPadding: customPadding,
          leftPadding: leftPadding,
          rightPadding: rightPadding,
          bottomPadding: bottomPadding,
          topPadding: topPadding,
          padding: padding,
        ),
        Text(
          data?.name ?? "",
          style: labelStyle ??
              TextStyles.switchItemLabel(
                color: labelColor,
              ),
        )
      ],
    );
  }
}
