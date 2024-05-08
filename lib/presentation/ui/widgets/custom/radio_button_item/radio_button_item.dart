import 'package:flutter/material.dart';
import 'package:watch_app/domain/entities/widget/radio_button_data.dart';
import 'package:watch_app/presentation/ui/widgets/base/selection/base_radio_button_view.dart';

class RadioButtonItem extends StatelessWidget {
  final RadioButtonData? data;
  final dynamic value;
  final void Function(dynamic value)? onChanged;
  final MouseCursor? mouseCursor;
  final bool? toggleable;
  final Color? activeColor;
  final MaterialStateProperty<Color?>? fillColor;
  final Color? hoverColor;
  final MaterialStateProperty<Color?>? overlayColor;
  final double? splashRadius;
  final MaterialTapTargetSize? materialTapTargetSize;
  final VisualDensity? visualDensity;
  final FocusNode? focusNode;
  final bool? autofocus;
  final Widget? title;
  final Widget? subtitle;
  final bool? isThreeLine;
  final bool? dense;
  final Widget? secondary;
  final bool? selected;
  final ListTileControlAffinity? controlAffinity;
  final EdgeInsetsGeometry? contentPadding;
  final ShapeBorder? shape;
  final Color? tileColor;
  final Color? selectedTileColor;
  final void Function(bool)? onFocusChange;
  final bool? enableFeedback;
  final TextStyle? labelStyle;
  final Color? labelColor;
  final TextStyle? subLabelStyle;
  final Color? subLabelColor;
  final bool? removePaddingTitle;
  final double? paddingTitle;
  final bool disable;

  const RadioButtonItem({
    super.key,
    required this.data,
    required this.value,
    required this.onChanged,
    this.mouseCursor,
    this.toggleable,
    this.activeColor,
    this.fillColor,
    this.hoverColor,
    this.overlayColor,
    this.splashRadius,
    this.materialTapTargetSize,
    this.visualDensity,
    this.focusNode,
    this.autofocus,
    this.title,
    this.subtitle,
    this.dense,
    this.secondary,
    this.contentPadding,
    this.shape,
    this.tileColor,
    this.selectedTileColor,
    this.onFocusChange,
    this.enableFeedback,
    this.labelStyle,
    this.labelColor,
    this.isThreeLine,
    this.selected,
    this.controlAffinity,
    this.subLabelStyle,
    this.subLabelColor,
    this.removePaddingTitle,
    this.paddingTitle,
    this.disable = false,
  });

  @override
  Widget build(BuildContext context) {
    return BaseRadioButtonView.itemTile(
      key: key,
      label: data?.name,
      subLabel: data?.subName,
      value: data?.value,
      groupValue: value,
      onChanged: onChanged,
      mouseCursor: mouseCursor,
      toggleable: toggleable ?? false,
      activeColor: activeColor,
      fillColor: fillColor,
      hoverColor: hoverColor,
      overlayColor: overlayColor,
      splashRadius: splashRadius,
      materialTapTargetSize: materialTapTargetSize,
      title: title,
      subtitle: subtitle,
      isThreeLine: isThreeLine ?? false,
      dense: dense,
      secondary: secondary,
      selected: selected ?? false,
      controlAffinity: controlAffinity,
      autofocus: autofocus ?? false,
      contentPadding: contentPadding,
      shape: shape,
      tileColor: tileColor,
      selectedTileColor: selectedTileColor,
      visualDensity: visualDensity,
      focusNode: focusNode,
      onFocusChange: onFocusChange,
      enableFeedback: enableFeedback,
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
