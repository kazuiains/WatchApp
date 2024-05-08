import 'package:flutter/material.dart';
import 'package:watch_app/app/config/styles/text_styles.dart';
import 'package:watch_app/domain/entities/widget/radio_button_data.dart';
import 'package:watch_app/presentation/ui/widgets/base/selection/base_radio_button_view.dart';

class RadioButtonItemBasic extends StatelessWidget {
  final RadioButtonData? data;
  final dynamic value;
  final void Function(dynamic value)? onChanged;
  final MouseCursor? mouseCursor;
  final bool? toggleable;
  final Color? activeColor;
  final MaterialStateProperty<Color?>? fillColor;
  final Color? focusColor;
  final Color? hoverColor;
  final MaterialStateProperty<Color?>? overlayColor;
  final double? splashRadius;
  final MaterialTapTargetSize? materialTapTargetSize;
  final VisualDensity? visualDensity;
  final FocusNode? focusNode;
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

  const RadioButtonItemBasic({
    super.key,
    required this.data,
    required this.value,
    required this.onChanged,
    this.mouseCursor,
    this.toggleable,
    this.activeColor,
    this.fillColor,
    this.focusColor,
    this.hoverColor,
    this.overlayColor,
    this.splashRadius,
    this.materialTapTargetSize,
    this.visualDensity,
    this.focusNode,
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
        BaseRadioButtonView.item(
          key: key,
          value: data?.value,
          groupValue: value,
          onChanged: onChanged,
          mouseCursor: mouseCursor,
          toggleable: toggleable,
          activeColor: activeColor,
          fillColor: fillColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          overlayColor: overlayColor,
          splashRadius: splashRadius,
          materialTapTargetSize: materialTapTargetSize,
          visualDensity: visualDensity,
          focusNode: focusNode,
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
              TextStyles.radioButtonItemLabel(
                color: labelColor,
              ),
        )
      ],
    );
  }
}
