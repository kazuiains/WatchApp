import 'package:flutter/material.dart';
import 'package:watch_app/app/config/app_colors.dart';
import 'package:watch_app/app/config/styles/shape_styles.dart';
import 'package:watch_app/app/config/styles/text_styles.dart';

class BaseButtonView {
  static MaterialButton flatButton({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHighlightChanged,
    MouseCursor? mouseCursor,
    ButtonTextTheme? textTheme,
    Color? textColor,
    Color? disabledTextColor,
    Color? color,
    Color? disabledColor,
    Color? focusColor,
    Color? hoverColor,
    Color? highlightColor,
    Color? splashColor,
    Brightness? colorBrightness,
    double? elevation,
    double? focusElevation,
    double? hoverElevation,
    double? highlightElevation,
    double? disabledElevation,
    EdgeInsetsGeometry? padding,
    VisualDensity? visualDensity,
    ShapeBorder? shape,
    Clip clipBehavior = Clip.none,
    FocusNode? focusNode,
    bool autofocus = false,
    MaterialTapTargetSize? materialTapTargetSize,
    Duration? animationDuration,
    double? minWidth,
    double? height,
    bool enableFeedback = true,
    Widget? child,
    BorderRadiusGeometry? borderRadius,
    String label = "",
    TextStyle? textStyle,
    double? radiusSize,
  }) {
    return MaterialButton(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHighlightChanged: onHighlightChanged,
      mouseCursor: mouseCursor,
      textTheme: textTheme,
      textColor: textColor ?? Colors.white,
      disabledTextColor: disabledTextColor,
      color: color ?? AppColors.defaultButtonActiveColor,
      disabledColor: disabledColor ?? AppColors.defaultButtonDisableColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      colorBrightness: colorBrightness,
      elevation: elevation ?? 0,
      focusElevation: focusElevation ?? 0,
      hoverElevation: hoverElevation ?? 0,
      highlightElevation: highlightElevation ?? 0,
      disabledElevation: disabledElevation ?? 0,
      padding: padding,
      visualDensity: visualDensity,
      shape: shape ??
          ShapeStyles.rounded(
            borderRadius: borderRadius,
            radiusSize: radiusSize,
          ),
      clipBehavior: clipBehavior,
      focusNode: focusNode,
      autofocus: autofocus,
      materialTapTargetSize: materialTapTargetSize,
      animationDuration: animationDuration,
      minWidth: minWidth,
      height: height ?? 50,
      enableFeedback: enableFeedback,
      child: child ??
          Text(
            label,
            style: textStyle,
          ),
    );
  }

  static MaterialButton borderButton({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHighlightChanged,
    MouseCursor? mouseCursor,
    ButtonTextTheme? textTheme,
    Color? textColor,
    Color? disabledTextColor,
    Color? color,
    Color? fillColor,
    Color? disabledColor,
    Color? focusColor,
    Color? hoverColor,
    Color? highlightColor,
    Color? splashColor,
    Brightness? colorBrightness,
    double? elevation,
    double? focusElevation,
    double? hoverElevation,
    double? highlightElevation,
    double? disabledElevation,
    EdgeInsetsGeometry? padding,
    VisualDensity? visualDensity,
    ShapeBorder? shape,
    Clip clipBehavior = Clip.none,
    FocusNode? focusNode,
    bool autofocus = false,
    MaterialTapTargetSize? materialTapTargetSize,
    Duration? animationDuration,
    double? minWidth,
    double? height,
    bool enableFeedback = true,
    Widget? child,
    BorderRadiusGeometry? borderRadius,
    String label = "",
    TextStyle? textStyle,
    double? borderSize,
    double? radiusSize,
  }) {
    return MaterialButton(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHighlightChanged: onHighlightChanged,
      mouseCursor: mouseCursor,
      textTheme: textTheme,
      textColor: textColor ?? AppColors.defaultBorderButtonTextColor,
      disabledTextColor: disabledTextColor,
      color: fillColor ?? Colors.white,
      disabledColor: disabledColor ?? Colors.white,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      colorBrightness: colorBrightness,
      elevation: elevation ?? 0,
      focusElevation: focusElevation ?? 0,
      hoverElevation: hoverElevation ?? 0,
      highlightElevation: highlightElevation ?? 0,
      disabledElevation: disabledElevation ?? 0,
      padding: padding,
      visualDensity: visualDensity,
      shape: shape ??
          ShapeStyles.rounded(
            borderRadius: borderRadius,
            radiusSize: radiusSize,
            color: color,
            borderSize: borderSize,
            withBorder: true,
          ),
      clipBehavior: clipBehavior,
      focusNode: focusNode,
      autofocus: autofocus,
      materialTapTargetSize: materialTapTargetSize,
      animationDuration: animationDuration,
      minWidth: minWidth,
      height: height ?? 50,
      enableFeedback: enableFeedback,
      child: child ??
          Text(
            label,
            style: textStyle,
          ),
    );
  }

  static TextButton flatTextButton({
    Key? key,
    required void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    MaterialStatesController? statesController,
    Widget? child,
    String label = "",
    TextStyle? textStyle,
  }) {
    return TextButton(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      statesController: statesController,
      child: child ??
          Text(
            label,
            style: textStyle,
          ),
    );
  }

  static Widget capsuleButton({
    required String label,
    TextStyle? labelStyle,
    Widget? iconWidget,
    IconData? iconData,
    Color? color,
    Color? iconColor,
    Color? labelColor,
    void Function()? onTap,
    EdgeInsetsGeometry? contentPadding,
    double? iconLabelPadding,
    double? endLabelPadding,
    double? iconSize,
  }) {
    return Card(
      shape: ShapeStyles.rounded(
        radiusSize: 100,
      ),
      elevation: 0,
      margin: const EdgeInsets.all(0),
      color: color ?? AppColors.defaultCapsuleButtonBackgroundColor,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(100),
        child: Padding(
          padding: contentPadding ?? const EdgeInsets.all(4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (iconWidget != null) ...{
                iconWidget,
              } else ...{
                Icon(
                  iconData,
                  size: iconSize ?? 25,
                  color: iconColor ?? AppColors.defaultCapsuleButtonContentColor,
                ),
              },
              SizedBox(
                width: iconLabelPadding ?? 4,
              ),
              Text(
                label,
                style: labelStyle ??
                    TextStyles.basicCapsuleButtonText(
                      color: labelColor,
                    ),
              ),
              SizedBox(
                width: endLabelPadding ?? 8,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static MaterialButton flatIconAssetButton({
    required void Function()? onPressed,
    required String icon,
    Color? color,
    BorderRadiusGeometry? borderRadius,
    double? radiusSize,
  }) {
    return flatButton(
      color: color,
      borderRadius: borderRadius ?? BorderRadius.circular(radiusSize ?? 5),
      padding: const EdgeInsets.all(16),
      height: 34,
      minWidth: 34,
      onPressed: onPressed,
      child: Image.asset(
        icon,
        width: 18,
      ),
    );
  }

  static MaterialButton iconAssetButton({
    required void Function()? onPressed,
    required String icon,
    Color? color,
  }) {
    return flatIconAssetButton(
      color: Colors.transparent,
      onPressed: onPressed,
      radiusSize: 50,
      icon: icon,
    );
  }

  static MaterialButton flatTextIconAssetButton({
    required void Function()? onPressed,
    required String icon,
    Color? color,
    double? radiusSize,
    MainAxisAlignment? alignment,
    required String text,
    Color? textColor,
  }) {
    return flatButton(
      radiusSize: radiusSize ?? 5,
      color: color,
      height: 45,
      child: Row(
        mainAxisAlignment: alignment ?? MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            width: 18,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyles.flatTextIconAssetButtonText(
              color: textColor,
            ),
          ),
        ],
      ),
      onPressed: onPressed,
    );
  }

  static Widget imageButton({
    required BuildContext context,
    double? height,
    double? width,
    required String imageData,
    required String text,
    String? label,
    BorderRadiusGeometry? borderRadius,
    Function()? onTap,
    Color? textColor,
  }) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(15),
      child: SizedBox(
        height: height,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset(
              imageData,
              fit: BoxFit.cover,
              width: width,
              height: height,
            ),
            Text(
              text,
              style: TextStyles.imageButtonText(
                color: textColor,
              ),
              maxLines: 1,
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
              ),
            )
          ],
        ),
      ),
    );
  }

  static TextButton balancedTextButton({
    required String text,
    EdgeInsetsGeometry? padding,
    double? borderRadius,
    TextStyle? textStyle,
    Color? rippleColor,
    Function()? onTap,
  }) {
    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
        overlayColor: MaterialStatePropertyAll<Color>(
          rippleColor ?? AppColors.defaultButtonOverlayColor,
        ),
        minimumSize: const MaterialStatePropertyAll<Size>(
          Size(0, 0),
        ),
        padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
          padding ?? const EdgeInsets.all(8),
        ),
        visualDensity: const VisualDensity(
          horizontal: -4,
          vertical: 0,
        ),
        shape: MaterialStatePropertyAll<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius ?? 8),
            ),
          ),
        ),
      ),
      child: Text(
        text,
        style: textStyle ??
            const TextStyle(
              color: Colors.black,
            ),
      ),
    );
  }
}
