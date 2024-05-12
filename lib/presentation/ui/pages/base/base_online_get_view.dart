import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_app/app/config/localizations/translation_key.dart';
import 'package:watch_app/app/config/styles/text_styles.dart';
import 'package:watch_app/presentation/get/base/base_controller.dart';
import 'package:watch_app/presentation/ui/widgets/base/actions/base_buttons_view.dart';
import 'package:watch_app/presentation/ui/widgets/base/containment/base_cards_view.dart';
import 'package:watch_app/presentation/ui/widgets/base/navigation/base_top_app_bar_view.dart';

abstract class BaseOnlineGetView<T extends BaseController> extends GetView<T> {
  const BaseOnlineGetView({super.key});

  @override
  Widget build(BuildContext context);

  ///root page ui / scaffold widget
  Widget loadingErrorView({
    required BuildContext context,
    bool? isDark,
    required Widget child,
    Widget? customError,
  }) {
    return GetBuilder<T>(
      id: controller.pageGetXId,
      builder: (controller) {
        if (!controller.isLoadingPage && !controller.isErrorPage) {
          return child;
        } else {
          return Container(
            color: Colors.white,
            child: GetBuilder<T>(
              id: controller.contentGetXId,
              builder: (controller) => Stack(
                children: [
                  if (controller.isErrorPage) ...{
                    if (controller.errorPageCode < -1 && customError != null) ...{
                      Positioned.fill(
                        child: customError,
                      ),
                    } else ...{
                      Positioned.fill(
                        child: controller.builderPageError(
                          (image, title, subtitle) => BaseCardsView.informationDisplay(
                            image: image,
                            title: title.tr,
                            subtitle: subtitle.tr,
                          ),
                        ),
                      ),
                    }
                  } else ...{
                    const Center(
                      child: CircularProgressIndicator(),
                    )
                  },
                  if (controller.isErrorPage) ...{
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: BaseTopAppBarView.transparentAppBar(
                        context,
                        isDark: isDark ?? false,
                      ),
                    ),
                  },
                  if (controller.isErrorPage) ...{
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: Colors.white,
                        height: 65,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            bottom: 8,
                            left: 16,
                            right: 16,
                          ),
                          child: BaseButtonView.flatButton(
                            label: baseLoadingAndErrorRefreshButton.tr,
                            textStyle: TextStyles.directTransactionFlatButtonText,
                            radiusSize: 16,
                            onPressed: () => controller.onRefreshPage(
                              context: context,
                            ),
                          ),
                        ),
                      ),
                    ),
                  },
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
