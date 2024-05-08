import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:watch_app/app/config/app_colors.dart';
import 'package:watch_app/app/config/localizations/translation_key.dart';
import 'package:watch_app/app/config/styles/text_styles.dart';
import 'package:watch_app/presentation/ui/widgets/base/actions/base_buttons_view.dart';
import 'package:watch_app/presentation/ui/widgets/base/navigation/base_top_app_bar_view.dart';

class SimplePermission extends StatelessWidget {
  final Color? backgroundColor;
  final Color? titleColor;
  final Color? descriptionColor;
  final String iconFileAsset;
  final String title;
  final String description;
  final String? titleButton;
  final Function()? onPressed;
  final double radiusSize;
  final bool denied;

  const SimplePermission({
    super.key,
    this.backgroundColor,
    required this.iconFileAsset,
    required this.title,
    required this.description,
    this.titleButton,
    this.onPressed,
    this.radiusSize = 5,
    this.titleColor,
    this.descriptionColor,
    this.denied = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: denied
              ? Container(
                  color: backgroundColor ?? AppColors.permissionBackgroundColor,
                  child: SafeArea(
                    child: Center(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Padding(
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset(
                                    iconFileAsset,
                                    width: 50,
                                    height: 50,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    title,
                                    style: TextStyles.permissionTitleText(
                                      color: titleColor,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    description,
                                    style: TextStyles.permissionDescriptionText(
                                      color: descriptionColor,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                ],
                              ),
                              BaseButtonView.flatButton(
                                height: 40,
                                radiusSize: radiusSize,
                                onPressed: onPressed,
                                label:
                                    titleButton ?? permissionViewLabelButton.tr,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : Container(
                  color: backgroundColor ?? AppColors.permissionBackgroundColor,
                ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: BaseTopAppBarView.transparentAppBar(
            context,
            isDark: true,
          ),
        ),
      ],
    );
  }
}
