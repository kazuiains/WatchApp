import 'package:watch_app/app/config/app_colors.dart';
import 'package:watch_app/app/config/app_dimens.dart';
import 'package:watch_app/app/config/app_styles.dart';
import 'package:watch_app/app/config/localizations/translation_key.dart';
import 'package:watch_app/app/types/modal_type.dart';
import 'package:watch_app/presentation/ui/widgets/base/actions/base_buttons_view.dart';
import 'package:watch_app/presentation/ui/widgets/base/containment/base_spacer_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseDialogsView {
  static basic({
    ModalType modalType = ModalType.success,
    required String description,
    String? title,
    Function? onYes,
    Function? onNo,
    bool dismissible = false,
  }) {
    Get.defaultDialog(
      title: "",
      backgroundColor: Colors.white,
      radius: AppDimens.roundedSmall,
      content: Padding(
        padding: BaseSpacerView.dialogContentSpace,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(
                  modalType.icon,
                  color: modalType.color,
                ),
                BaseSpacerView.dialogIconTitleSpace,
                Expanded(
                  child: Text(
                    title ?? modalType.title,
                    style: TextStyles.dialogTitle(
                      color: modalType.color,
                    ),
                  ),
                ),
              ],
            ),
            BaseSpacerView.dialogTitleDescriptionSpace,
            Text(
              description,
              style: TextStyles.dialogDescription,
            )
          ],
        ),
      ),
      actions: [
        Container(
          padding: BaseSpacerView.dialogActionSpace,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BaseButtonView.flatTextButton(
                onPressed: () {
                  if (onNo != null) {
                    onNo();
                  } else {
                    Get.back(result: false);
                  }
                },
                style: ButtonStyles.defaultDialog(),
                label: modalTextNo.tr,
                textStyle: TextStyles.dialogButtonTitle(
                  color: modalType.colorButtonNo,
                ),
              ),
              BaseSpacerView.dialogButtonSpace,
              BaseButtonView.flatTextButton(
                onPressed: () {
                  if (onYes != null) {
                    onYes();
                  } else {
                    Get.back(result: true);
                  }
                },
                style: ButtonStyles.defaultDialog(),
                label: modalTextYes.tr,
                textStyle: TextStyles.dialogButtonTitle(
                  color: modalType.colorButtonYes,
                ),
              )
            ],
          ),
        ),
      ],
      titlePadding: const EdgeInsets.all(0),
      contentPadding: const EdgeInsets.all(0),
      barrierDismissible: dismissible,
    );
  }

  static information({
    ModalType modalType = ModalType.success,
    required String description,
    String? title,
    Function? onOk,
    bool dismissible = false,
  }) {
    Get.defaultDialog(
      title: "",
      backgroundColor: Colors.white,
      radius: AppDimens.roundedSmall,
      content: Padding(
        padding: BaseSpacerView.dialogContentSpace,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(
                  modalType.icon,
                  color: modalType.color,
                ),
                BaseSpacerView.dialogIconTitleSpace,
                Expanded(
                  child: Text(
                    title ?? modalType.title,
                    style: TextStyles.dialogTitle(
                      color: modalType.color,
                    ),
                  ),
                ),
              ],
            ),
            BaseSpacerView.dialogTitleDescriptionSpace,
            Text(
              description,
              style: TextStyles.dialogDescription,
            )
          ],
        ),
      ),
      actions: [
        Container(
          alignment: Alignment.centerRight,
          padding: BaseSpacerView.dialogActionSpace,
          child: BaseButtonView.flatTextButton(
            onPressed: () {
              if (onOk != null) {
                onOk();
              } else {
                Get.back(result: true);
              }
            },
            style: ButtonStyles.defaultDialog(),
            label: modalTextOk.tr,
            textStyle: TextStyles.dialogButtonTitle(
              color: modalType.colorButtonYes,
            ),
          ),
        ),
      ],
      titlePadding: const EdgeInsets.all(0),
      contentPadding: const EdgeInsets.all(0),
      barrierDismissible: dismissible,
    );
  }

  static delete(
    Function? onDelete,
  ) {
    basic(
      title: modalTitleWarning.tr,
      description: modalDescriptionDelete.tr,
      onYes: onDelete,
      modalType: ModalType.warning,
    );
  }

  static syncData(
    Function? onSync,
  ) {
    basic(
      title: modalTitleWarning.tr,
      description: modalDescriptionSyncData.tr,
      onYes: onSync,
      modalType: ModalType.warning,
    );
  }

  static inputForm({
    required VoidCallback onCancel,
    required VoidCallback onSave,
    required Widget content,
    bool dismissible = false,
    bool isRead = false,
  }) {
    Get.defaultDialog(
      title: "",
      backgroundColor: Colors.white,
      radius: AppDimens.roundedSmall,
      content: Padding(
        padding: BaseSpacerView.dialogContentSpace,
        child: content,
      ),
      actions: [
        Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (!isRead) ...{
                BaseButtonView.flatTextButton(
                  onPressed: onCancel,
                  style: ButtonStyles.defaultDialog(),
                  label: modalTextCancel.tr,
                  textStyle: TextStyles.dialogButtonTitle(
                    color: AppColors.defaultModalColor,
                  ),
                ),
                BaseSpacerView.dialogButtonSpace,
              },
              BaseButtonView.flatTextButton(
                onPressed: onSave,
                style: ButtonStyles.defaultDialog(),
                label: isRead ? modalTextOk.tr : modalTextSave.tr,
                textStyle: TextStyles.dialogButtonTitle(
                  color: AppColors.defaultModalSuccessColor,
                ),
              ),
            ],
          ),
        ),
      ],
      titlePadding: const EdgeInsets.all(0),
      contentPadding: const EdgeInsets.all(0),
      barrierDismissible: dismissible,
    );
  }
}
