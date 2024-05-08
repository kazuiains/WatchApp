import 'package:flutter/material.dart';
import 'package:watch_app/app/config/app_colors.dart';
import 'package:watch_app/app/config/styles/box_styles.dart';
import 'package:watch_app/app/config/styles/shape_styles.dart';
import 'package:watch_app/app/config/styles/text_styles.dart';
import 'package:watch_app/presentation/ui/widgets/base/containment/base_spacer_view.dart';

class BaseCardsView {
  static Card basic({
    Key? key,
    Color? color,
    Color? shadowColor,
    Color? surfaceTintColor,
    Color? borderColor,
    double? borderSize,
    double? radiusSize,
    double? elevation,
    ShapeBorder? shape,
    bool borderOnForeground = true,
    EdgeInsetsGeometry? margin,
    Clip? clipBehavior,
    Widget? child,
    bool semanticContainer = true,
    BorderRadius? borderRadius,
  }) {
    return Card(
      key: key,
      color: color,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      elevation: elevation ?? 0,
      shape: shape ??
          ShapeStyles.rounded(
            borderRadius: borderRadius,
            radiusSize: radiusSize,
            color: borderColor,
            borderSize: borderSize ?? 1.0,
            withBorder: true,
          ),
      borderOnForeground: borderOnForeground,
      margin: margin ?? const EdgeInsets.all(0),
      clipBehavior: clipBehavior,
      semanticContainer: semanticContainer,
      child: child,
    );
  }

  static Card basicClickAble({
    Key? key,
    Color? color,
    Color? shadowColor,
    Color? surfaceTintColor,
    Color? borderColor,
    double? borderSize,
    double radiusSize = 4,
    double? elevation,
    ShapeBorder? shape,
    bool borderOnForeground = true,
    EdgeInsetsGeometry? margin,
    Clip? clipBehavior,
    Widget? child,
    bool semanticContainer = true,
    BorderRadius? borderRadius,
    Key? keyClick,
    GestureTapCallback? onTap,
    GestureTapCallback? onDoubleTap,
    GestureLongPressCallback? onLongPress,
    GestureTapDownCallback? onTapDown,
    GestureTapUpCallback? onTapUp,
    GestureTapCallback? onTapCancel,
    ValueChanged<bool>? onHighlightChanged,
    ValueChanged<bool>? onHover,
    MouseCursor? mouseCursor,
    Color? focusColor,
    Color? hoverColor,
    Color? highlightColor,
    MaterialStateProperty<Color?>? overlayColor,
    Color? splashColor,
    InteractiveInkFeatureFactory? splashFactory,
    double? radius,
    ShapeBorder? customBorder,
    bool? enableFeedback = true,
    bool excludeFromSemantics = false,
    FocusNode? focusNode,
    bool canRequestFocus = true,
    ValueChanged<bool>? onFocusChange,
    bool autofocus = false,
    MaterialStatesController? statesController,
  }) {
    return Card(
      key: key,
      color: color,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      elevation: elevation ?? 0,
      shape: shape ??
          ShapeStyles.rounded(
            borderRadius: borderRadius,
            radiusSize: radiusSize,
            color: borderColor,
            borderSize: borderSize ?? 1.0,
            withBorder: true,
          ),
      borderOnForeground: borderOnForeground,
      margin: margin ?? const EdgeInsets.all(0),
      clipBehavior: clipBehavior,
      semanticContainer: semanticContainer,
      child: InkWell(
        key: keyClick,
        onTap: onTap,
        onDoubleTap: onDoubleTap,
        onLongPress: onLongPress,
        onTapDown: onTapDown,
        onTapUp: onTapUp,
        onTapCancel: onTapCancel,
        onHighlightChanged: onHighlightChanged,
        onHover: onHover,
        mouseCursor: mouseCursor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        overlayColor: overlayColor,
        splashColor: splashColor,
        splashFactory: splashFactory,
        radius: radius,
        borderRadius: borderRadius ?? BorderRadius.circular(radiusSize),
        customBorder: customBorder,
        enableFeedback: enableFeedback,
        excludeFromSemantics: excludeFromSemantics,
        focusNode: focusNode,
        canRequestFocus: canRequestFocus,
        onFocusChange: onFocusChange,
        autofocus: autofocus,
        statesController: statesController,
        child: child,
      ),
    );
  }

  static Card dashboardContentRoundedTop({
    double borderSize = 15,
    double paddingCardSize = 10,
    double paddingScrollSize = 15,
    Color? color,
    Color? contentColor,
    EdgeInsetsGeometry? paddingScroll,
    EdgeInsetsGeometry? paddingContent,
    List<Widget> children = const <Widget>[],
  }) {
    return Card(
      color: color ?? AppColors.dashboardContentRoundedTopColor,
      elevation: 0,
      margin: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(borderSize),
          topLeft: Radius.circular(borderSize),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(borderSize),
          topLeft: Radius.circular(borderSize),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: paddingCardSize,
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: paddingScroll ??
                EdgeInsets.only(
                  bottom: paddingScrollSize,
                ),
            child: Container(
              color: contentColor ??
                  AppColors.dashboardContentRoundedTopContentColor,
              padding: paddingContent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: children,
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Widget baseContent(List<Widget> children) {
    return Container(
      color: AppColors.contentColor,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: AppColors.lightGrey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: children,
          ),
        ),
      ),
    );
  }

  static Container bottomNavigation({
    Key? key,
    Color? color,
    Color? shadowColor,
    double? spreadRadius,
    double? blurRadius,
    double? height,
    double? width,
    AlignmentGeometry? alignment,
    double? radiusSize,
    Offset? offset,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    Widget? child,
    BorderRadius? borderRadius,
    Clip clip = Clip.none,
    BoxConstraints? constraints,
    Decoration? foregroundDecoration,
    Matrix4? transform,
    AlignmentGeometry? transformAlignment,
    Color? surfaceTintColor,
    double? elevation,
    ShapeBorder? shape,
    bool borderOnForeground = true,
    Clip? clipBehavior,
    bool semanticContainer = true,
  }) {
    return Container(
      key: key,
      decoration: BoxStyles.bottomNavFloating(
        borderRadius: borderRadius,
        radiusSize: radiusSize,
        shadowColor: shadowColor,
        spreadRadius: spreadRadius,
        blurRadius: blurRadius,
        offset: offset,
      ),
      margin: margin ?? const EdgeInsets.all(0),
      height: height,
      width: width,
      alignment: alignment,
      padding: padding ?? const EdgeInsets.all(0),
      clipBehavior: clip,
      constraints: constraints,
      foregroundDecoration: foregroundDecoration,
      transform: transform,
      transformAlignment: transformAlignment,
      child: Card(
        key: key,
        color: color ?? Colors.white,
        shadowColor: shadowColor,
        surfaceTintColor: surfaceTintColor,
        elevation: 0,
        shape: shape ??
            ShapeStyles.rounded(
              borderRadius: borderRadius,
              radiusSize: radiusSize,
            ),
        borderOnForeground: borderOnForeground,
        margin: margin ?? const EdgeInsets.all(0),
        clipBehavior: clipBehavior,
        semanticContainer: semanticContainer,
        child: child,
      ),
    );
  }

  static InkWell itemModuleFlatRounded({
    required String image,
    required String title,
    Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
              height: 78,
              width: 78,
              child: Card(
                color: AppColors.primary,
                elevation: 0,
                shape: ShapeStyles.rounded(),
                margin: const EdgeInsets.all(0),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset(
                    image,
                    height: 32,
                    width: 32,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              title,
              style: TextStyles.cardItemModuleFlatRounded,
            )
          ],
        ),
      ),
    );
  }

  static Card itemModuleCircle({
    Widget? icon,
    IconData? iconData,
    String label = "",
    Color? labelColor,
    void Function()? onTap,
    void Function()? onDoubleTap,
    void Function()? onLongPress,
    void Function(TapDownDetails)? onTapDown,
    void Function(TapUpDetails)? onTapUp,
    void Function()? onTapCancel,
    void Function()? onSecondaryTap,
    void Function(TapUpDetails)? onSecondaryTapUp,
    void Function(TapDownDetails)? onSecondaryTapDown,
    void Function()? onSecondaryTapCancel,
    void Function(bool)? onHighlightChanged,
    void Function(bool)? onHover,
  }) {
    return Card(
      margin: const EdgeInsets.all(0),
      elevation: 0,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        onDoubleTap: onDoubleTap,
        onLongPress: onLongPress,
        onTapDown: onTapDown,
        onTapUp: onTapUp,
        onTapCancel: onTapCancel,
        onSecondaryTap: onSecondaryTap,
        onSecondaryTapUp: onSecondaryTapUp,
        onSecondaryTapDown: onSecondaryTapDown,
        onSecondaryTapCancel: onSecondaryTapCancel,
        onHighlightChanged: onHighlightChanged,
        onHover: onHover,
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (icon != null) ...{
                icon,
              } else ...{
                Icon(
                  iconData ?? Icons.circle,
                  size: 50,
                )
              },
              Expanded(
                child: Text(
                  label,
                  style: TextStyles.cardItemModuleCircleLabel(
                    color: labelColor,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget buttonBalanceCard({
    Widget? icon,
    IconData? iconData,
    String label = "",
    Color? labelColor,
    void Function()? onTap,
    void Function()? onDoubleTap,
    void Function()? onLongPress,
    void Function(TapDownDetails)? onTapDown,
    void Function(TapUpDetails)? onTapUp,
    void Function()? onTapCancel,
    void Function()? onSecondaryTap,
    void Function(TapUpDetails)? onSecondaryTapUp,
    void Function(TapDownDetails)? onSecondaryTapDown,
    void Function()? onSecondaryTapCancel,
    void Function(bool)? onHighlightChanged,
    void Function(bool)? onHover,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTapCancel: onTapCancel,
      onSecondaryTap: onSecondaryTap,
      onSecondaryTapUp: onSecondaryTapUp,
      onSecondaryTapDown: onSecondaryTapDown,
      onSecondaryTapCancel: onSecondaryTapCancel,
      onHighlightChanged: onHighlightChanged,
      onHover: onHover,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...{
              icon,
            } else ...{
              Icon(
                iconData ?? Icons.circle,
                size: 30,
              )
            },
            const SizedBox(
              height: 4,
            ),
            Text(
              label,
              style: TextStyles.cardItemModuleCircleLabel(
                color: labelColor,
              ).copyWith(
                fontSize: 12,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  static Widget bottomPurchase({
    required String label,
    required Widget nominal,
    required Widget button,
  }) {
    return Container(
      height: 65,
      color: Colors.white,
      padding: BaseSpacerView.cardPurchaseContentSpace,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                right: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    label,
                    style: TextStyles.cardPurchaseLabel,
                  ),
                  BaseSpacerView.heightDistanceTextAndTextSmallest,
                  nominal,
                ],
              ),
            ),
          ),
          Expanded(
            child: button,
          ),
        ],
      ),
    );
  }

  static Widget informationDisplay({
    required String image,
    double? width,
    double? height,
    required String title,
    required String subtitle,
    EdgeInsetsGeometry? padding,
  }) {
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: padding ?? const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  image,
                  width: width,
                  height: height,
                ),
                Text(
                  title,
                  style: TextStyles.baseLoadingAndErrorTitleInformation,
                  textAlign: TextAlign.center,
                ),
                BaseSpacerView.heightSmall,
                Text(
                  subtitle,
                  style: TextStyles.baseLoadingAndErrorSubtitleInformation,
                  textAlign: TextAlign.center,
                ),
                BaseSpacerView.heightLarge,
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget countDown({
    required String label,
    TextStyle? labelStyle,
    Widget? iconWidget,
    IconData? iconData,
    Color? color,
    Color? iconColor,
    Color? labelColor,
    EdgeInsetsGeometry? contentPadding,
    double? iconLabelPadding,
    double? endLabelPadding,
    double? iconSize,
    double? radiusSize,
  }) {
    return Card(
      shape: ShapeStyles.rounded(
        radiusSize: radiusSize ?? 100,
      ),
      elevation: 0,
      margin: const EdgeInsets.all(0),
      color: color ?? AppColors.defaultCapsuleButtonBackgroundColor,
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
                color:
                iconColor ?? AppColors.defaultCapsuleButtonContentColor,
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
    );
  }
}
