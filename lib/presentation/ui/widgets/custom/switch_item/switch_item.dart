import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:watch_app/domain/entities/widget/switch_data.dart';
import 'package:watch_app/presentation/ui/widgets/base/selection/base_switch_view.dart';

class SwitchItem extends StatelessWidget {
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
  final MaterialStateProperty<Color?>? overlayColor;
  final double? splashRadius;
  final FocusNode? focusNode;
  final void Function(bool)? onFocusChange;
  final bool? autofocus;
  final Color? tileColor;
  final Widget? title;
  final Widget? subtitle;
  final bool? isThreeLine;
  final bool? dense;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? secondary;
  final bool? selected;
  final ListTileControlAffinity? controlAffinity;
  final ShapeBorder? shape;
  final Color? selectedTileColor;
  final VisualDensity? visualDensity;
  final bool? enableFeedback;
  final Color? hoverColor;
  final TextStyle? labelStyle;
  final Color? labelColor;
  final TextStyle? subLabelStyle;
  final Color? subLabelColor;
  final bool? removePaddingTitle;
  final double? paddingTitle;
  final bool disable;

  const SwitchItem({
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
    this.overlayColor,
    this.splashRadius,
    this.focusNode,
    this.onFocusChange,
    this.autofocus,
    this.tileColor,
    this.title,
    this.subtitle,
    this.isThreeLine,
    this.dense,
    this.contentPadding,
    this.secondary,
    this.selected,
    this.controlAffinity,
    this.shape,
    this.selectedTileColor,
    this.visualDensity,
    this.enableFeedback,
    this.hoverColor,
    this.labelStyle,
    this.labelColor,
    this.subLabelStyle,
    this.subLabelColor,
    this.removePaddingTitle,
    this.paddingTitle,
    this.disable = false,
  });

  @override
  Widget build(BuildContext context) {
    return BaseSwitchView.itemTile(
      key: key,
      label: data?.name,
      subLabel: data?.subName,
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
      overlayColor: overlayColor,
      splashRadius: splashRadius,
      focusNode: focusNode,
      onFocusChange: onFocusChange,
      autofocus: autofocus,
      tileColor: tileColor,
      title: title,
      subtitle: subtitle,
      isThreeLine: isThreeLine,
      dense: dense,
      contentPadding: contentPadding,
      secondary: secondary,
      selected: selected,
      controlAffinity: controlAffinity,
      shape: shape,
      selectedTileColor: selectedTileColor,
      visualDensity: visualDensity,
      enableFeedback: enableFeedback,
      hoverColor: hoverColor,
      labelStyle: labelStyle,
      labelColor: labelColor,
      subLabelStyle: subLabelStyle,
      subLabelColor: subLabelColor,
      removePaddingTitle: removePaddingTitle,
      paddingTitle: paddingTitle,
      disable: disable,
    );
  }
}
