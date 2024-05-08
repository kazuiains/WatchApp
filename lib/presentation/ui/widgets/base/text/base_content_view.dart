import 'package:flutter/material.dart';
import 'package:watch_app/app/config/app_colors.dart';
import 'package:watch_app/app/config/styles/shape_styles.dart';
import 'package:watch_app/app/config/styles/text_styles.dart';
import 'package:watch_app/presentation/ui/widgets/base/containment/base_spacer_view.dart';

class BaseContentView {
  static Widget basic({
    required String title,
    Widget? header,
    TextStyle? headerStyle,
    List<Widget> children = const <Widget>[],
  }) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (header != null) ...{
            header,
          } else ...{
            basicHeader(
              title: title,
              style: headerStyle,
            ),
          },
          Container(
            padding: BaseSpacerView.contentBasicBodyContentSpace,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: children,
            ),
          )
        ],
      ),
    );
  }

  static Widget basicHeader({
    required String title,
    TextStyle? style,
  }) {
    return Container(
      padding: BaseSpacerView.paddingMedium,
      child: Text(
        title,
        style: style ?? TextStyles.contentBasicHeaderTitle,
      ),
    );
  }

  static Widget basicIcon({
    required String title,
    required String subtitle,
    required String icon,
    bool usePaddingIcon = false,
    EdgeInsetsGeometry? paddingIcon,
    double? iconWidth,
    double? iconHeight,
    void Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Padding(
            padding: usePaddingIcon
                ? paddingIcon ?? const EdgeInsets.all(2.5)
                : const EdgeInsets.all(0),
            child: Image.asset(
              icon,
              width: iconWidth ?? 25,
              height: iconHeight ?? 25,
            ),
          ),
          BaseSpacerView.widthGeneralDistanceImageAndText,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: TextStyles.contentBasicTitle,
                ),
                BaseSpacerView.heightGeneralDistanceHeaderTextAndSubText,
                Text(
                  subtitle,
                  style: TextStyles.contentBasicSubtitle,
                  maxLines: 1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  static Widget field({
    required String label,
    required String value,
  }) {
    return Card(
      shape: ShapeStyles.rounded(
        withBorder: true,
        borderSize: 1,
        color: AppColors.lightGrey,
      ),
      elevation: 0,
      margin: BaseSpacerView.paddingZero,
      child: Padding(
        padding: BaseSpacerView.paddingMedium,
        child: Row(
          children: [
            Text(
              label,
              style: TextStyles.contentBasicTitle,
            ),
            BaseSpacerView.widthGeneralDistanceHeaderTextAndValueText,
            Expanded(
              child: Text(
                value,
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget itemRightValue({
    required String label,
    required Widget value,
  }) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            color: AppColors.darkGrey,
            overflow: TextOverflow.ellipsis,
          ),
          maxLines: 1,
        ),
        BaseSpacerView.widthMedium,
        Expanded(
          child: value,
        )
      ],
    );
  }

  static Widget itemResultText({
    required String label,
    required String value,
  }) {
    return Row(
      children: [
        Text(
          label,
          style: const TextStyle(
            overflow: TextOverflow.ellipsis,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 1,
        ),
        BaseSpacerView.widthMedium,
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            textAlign: TextAlign.end,
          ),
        )
      ],
    );
  }
}
