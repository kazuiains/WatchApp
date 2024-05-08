import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:watch_app/app/config/app_colors.dart';
import 'package:watch_app/app/config/styles/text_styles.dart';
import 'package:watch_app/presentation/ui/widgets/base/containment/base_divider_view.dart';

class BaseLabelView {
  static Widget fieldLabel({
    required String label,
    TextStyle? labelStyle,
    double? marginTop,
    double? marginBottom,
    double? paddingLeft,
    double? paddingRight,
    EdgeInsetsGeometry? padding,
    bool? usePadding,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    TextScaler? textScaler,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: marginTop ?? 0,
        ),
        Padding(
          padding: usePadding ?? false
              ? padding ??
                  EdgeInsets.only(
                    left: paddingLeft ?? 16,
                    right: paddingRight ?? 16,
                  )
              : const EdgeInsets.all(0),
          child: Text(
            label,
            style: labelStyle ?? TextStyles.labelFieldLabel,
            strutStyle: strutStyle,
            textAlign: textAlign,
            textDirection: textDirection,
            locale: locale,
            softWrap: softWrap,
            overflow: overflow,
            textScaler: textScaler,
            maxLines: maxLines,
            semanticsLabel: semanticsLabel,
            textWidthBasis: textWidthBasis,
            textHeightBehavior: textHeightBehavior,
            selectionColor: selectionColor,
          ),
        ),
        SizedBox(
          height: marginBottom ?? 6,
        ),
      ],
    );
  }

  static Widget centerLabelWithDivider({
    required String label,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: BaseDividerView.basic(
            endIndent: 17,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
        Expanded(
          child: BaseDividerView.basic(
            indent: 17,
          ),
        )
      ],
    );
  }

  static Widget headerLabel({
    String label = "",
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Text(
        label,
        style: TextStyles.labelHeaderLabel,
      ),
    );
  }

  static Widget headerLabelTile({
    String label = "",
    EdgeInsetsGeometry? padding,
  }) {
    return Container(
      padding: padding ??
          const EdgeInsets.only(
            top: 24,
            left: 16,
            right: 16,
            bottom: 16,
          ),
      child: Text(
        label,
        style: TextStyles.labelHeaderLabelTale,
      ),
    );
  }

  static TextSpan basicSpan({
    String? text,
    TextStyle? style,
    Function()? onTap,
    List<InlineSpan>? children,
  }) {
    return TextSpan(
      text: text,
      style: onTap != null
          ? TextStyles.labelBasicTextSpanClickAble
          : TextStyles.labelBasicTextSpan,
      recognizer: TapGestureRecognizer()..onTap = onTap,
      children: children,
    );
  }

  static Widget basicLink({
    required String text,
    bool? isTapped,
    double? fontSize,
    Function()? onTap,
    Function(bool)? onTapDown,
    Function(bool)? onTapCancel,
    Color? disableColor,
    Color? enableColor,
  }) {
    return InkWell(
      onTap: onTap,
      onTapDown: (details) {
        if (onTapDown != null) {
          onTapDown(true);
        }
      },
      onTapUp: (details) {
        if (onTap != null) {
          onTap();
        }
      },
      onTapCancel: () {
        if (onTapCancel != null) {
          onTapCancel(false);
        }
      },
      overlayColor: MaterialStateProperty.all<Color>(
        Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          16,
        ),
        child: Text(
          text,
          style: TextStyles.labelBasicLinkText(
            fontSize: fontSize,
            color: isTapped ?? false
                ? enableColor ?? AppColors.primary
                : disableColor ?? AppColors.text[600],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  static Widget rightText({
    required String text,
  }) {
    return Text(
      text,
      style: const TextStyle(
        overflow: TextOverflow.ellipsis,
      ),
      maxLines: 1,
      textAlign: TextAlign.end,
    );
  }
}
