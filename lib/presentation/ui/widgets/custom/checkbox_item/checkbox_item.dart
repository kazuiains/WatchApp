import 'package:flutter/material.dart';
import 'package:watch_app/domain/entities/widget/checkbox_data.dart';
import 'package:watch_app/presentation/ui/widgets/base/selection/base_checkbox_view.dart';

class CheckboxItem extends StatelessWidget {
  final CheckboxData? data;
  final void Function(bool?)? onChanged;
  final MouseCursor? mouseCursor;
  final Color? activeColor;
  final MaterialStateProperty<Color?>? fillColor;
  final Color? checkColor;
  final Color? hoverColor;
  final MaterialStateProperty<Color?>? overlayColor;
  final double? splashRadius;
  final MaterialTapTargetSize? materialTapTargetSize;
  final VisualDensity? visualDensity;
  final FocusNode? focusNode;
  final bool? autofocus;
  final ShapeBorder? shape;
  final BorderSide? side;
  final bool? isError;
  final bool disable;
  final Color? tileColor;
  final Widget? title;
  final Widget? subtitle;
  final bool? isThreeLine;
  final bool? dense;
  final Widget? icon;
  final bool? selected;
  final ListTileControlAffinity? controlAffinity;
  final EdgeInsetsGeometry? contentPadding;
  final OutlinedBorder? checkboxShape;
  final Color? selectedTileColor;
  final void Function(bool)? onFocusChange;
  final bool? enableFeedback;
  final TextStyle? labelStyle;
  final Color? labelColor;
  final TextStyle? subLabelStyle;
  final Color? subLabelColor;
  final bool? removePaddingTitle;
  final double? paddingTitle;

  const CheckboxItem({
    super.key,
    required this.data,
    required this.onChanged,
    this.mouseCursor,
    this.activeColor,
    this.fillColor,
    this.checkColor,
    this.hoverColor,
    this.overlayColor,
    this.splashRadius,
    this.materialTapTargetSize,
    this.visualDensity,
    this.focusNode,
    this.autofocus,
    this.shape,
    this.side,
    this.isError,
    this.disable = false,
    this.tileColor,
    this.title,
    this.subtitle,
    this.isThreeLine,
    this.dense,
    this.icon,
    this.selected,
    this.controlAffinity,
    this.contentPadding,
    this.checkboxShape,
    this.selectedTileColor,
    this.onFocusChange,
    this.enableFeedback,
    this.labelStyle,
    this.labelColor,
    this.subLabelStyle,
    this.subLabelColor,
    this.removePaddingTitle,
    this.paddingTitle,
  });

  @override
  Widget build(BuildContext context) {
    return BaseCheckboxView.itemTile(
      key: key,
      label: data?.name,
      subLabel: data?.subName,
      value: data?.value,
      tristate: data?.tristate,
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
      autofocus: autofocus,
      shape: shape,
      side: side,
      isError: isError,
      enabled: !disable,
      tileColor: tileColor,
      title: title,
      subtitle: subtitle,
      isThreeLine: isThreeLine,
      dense: dense,
      secondary: icon,
      selected: selected,
      controlAffinity: controlAffinity,
      contentPadding: contentPadding,
      checkboxShape: checkboxShape,
      selectedTileColor: selectedTileColor,
      onFocusChange: onFocusChange,
      enableFeedback: enableFeedback,
      labelStyle: labelStyle,
      labelColor: labelColor,
      subLabelStyle: subLabelStyle,
      subLabelColor: subLabelColor,
      removePaddingTitle: removePaddingTitle,
      paddingTitle: paddingTitle,
    );
  }
}
