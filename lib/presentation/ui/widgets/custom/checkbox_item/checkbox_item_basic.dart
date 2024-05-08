import 'package:flutter/material.dart';
import 'package:watch_app/app/config/styles/text_styles.dart';
import 'package:watch_app/domain/entities/widget/checkbox_data.dart';
import 'package:watch_app/presentation/ui/widgets/base/selection/base_checkbox_view.dart';

class CheckboxItemBasic extends StatelessWidget {
  final CheckboxData? data;
  final void Function(bool? value)? onChanged;
  final MouseCursor? mouseCursor;
  final Color? activeColor;
  final MaterialStateProperty<Color?>? fillColor;
  final Color? checkColor;
  final Color? focusColor;
  final Color? hoverColor;
  final MaterialStateProperty<Color?>? overlayColor;
  final double? splashRadius;
  final MaterialTapTargetSize? materialTapTargetSize;
  final VisualDensity? visualDensity;
  final FocusNode? focusNode;
  final bool? autofocus;
  final OutlinedBorder? shape;
  final BorderSide? side;
  final bool? isError;
  final TextStyle? labelStyle;
  final Color? labelColor;
  final bool? disable;
  final bool? customPadding;
  final double? leftPadding;
  final double? rightPadding;
  final double? bottomPadding;
  final double? topPadding;
  final EdgeInsetsGeometry? padding;

  const CheckboxItemBasic({
    super.key,
    required this.data,
    required this.onChanged,
    this.mouseCursor,
    this.activeColor,
    this.fillColor,
    this.checkColor,
    this.focusColor,
    this.hoverColor,
    this.overlayColor,
    this.splashRadius,
    this.materialTapTargetSize,
    this.visualDensity,
    this.focusNode,
    this.shape,
    this.side,
    this.autofocus,
    this.isError,
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
        BaseCheckboxView.item(
          key: key,
          value: data?.value,
          tristate: data?.tristate,
          onChanged: onChanged,
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
          autofocus: autofocus,
          shape: shape,
          side: side,
          isError: isError,
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
              TextStyles.checkboxItemLabel(
                color: labelColor,
              ),
        )
      ],
    );
  }
}
