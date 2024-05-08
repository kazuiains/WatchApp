import 'package:flutter/material.dart';
import 'package:watch_app/app/config/app_colors.dart';

class TextStyles {
  //snack bar
  static TextStyle snackBarButtonTitle = TextStyle(
    fontSize: 12,
    color: AppColors.text[200]!,
  );
  static TextStyle snackBarButtonMessage = TextStyle(
    fontSize: 12,
    height: 1.5,
    color: AppColors.darkGrey,
  );

  static TextStyle snackBarWithOutTitleButtonTitle = TextStyle(
    fontSize: 14,
    color: AppColors.whiteText,
  );

  static TextStyle snackBarWithOutTitleButtonMessage = TextStyle(
    fontSize: 14,
    height: 1.5,
    color: AppColors.whiteText,
  );

  //bottom sheet
  static TextStyle bottomSheetTitle = const TextStyle(
    fontSize: 24,
    height: 1.5,
    fontWeight: FontWeight.bold,
  );

  static TextStyle bottomSheetDescription = const TextStyle(
    height: 1.5,
  );

  static TextStyle bottomSheetButtonText({
    Color? color,
  }) {
    return TextStyle(
      fontSize: 16,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }

  //dialog
  static TextStyle dialogTitle({
    Color? color,
  }) {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: color ?? AppColors.text,
    );
  }

  static TextStyle dialogDescription = TextStyle(
    fontSize: 14,
    color: AppColors.text[500],
    height: 1.5,
  );

  static TextStyle dialogButtonTitle({
    Color? color,
  }) {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: color ?? AppColors.text,
    );
  }

  static TextStyle dialogSuccessTitle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static TextStyle dialogSuccessButtonTitle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  //checkbox
  static TextStyle checkboxItemLabel({
    Color? color,
  }) {
    return TextStyle(
      color: color ?? AppColors.text,
    );
  }

  static TextStyle checkboxItemSubLabel({
    Color? color,
  }) {
    return TextStyle(
      fontSize: 12,
      color: color ?? AppColors.text[400],
    );
  }

  //radio button
  static TextStyle radioButtonItemLabel({
    Color? color,
  }) {
    return TextStyle(
      color: color ?? AppColors.text,
    );
  }

  static TextStyle radioButtonItemSubLabel({
    Color? color,
  }) {
    return TextStyle(
      fontSize: 12,
      color: color ?? AppColors.text[400],
    );
  }

  //switch
  static TextStyle switchItemLabel({
    Color? color,
  }) {
    return TextStyle(
      color: color ?? AppColors.text,
    );
  }

  static TextStyle switchItemSubLabel({
    Color? color,
  }) {
    return TextStyle(
      fontSize: 12,
      color: color ?? AppColors.text[400],
    );
  }

  //navigation drawer
  static TextStyle navigationDrawerItemLabel({
    Color? color,
  }) {
    return TextStyle(
      color: color ?? AppColors.text,
    );
  }

  static TextStyle navigationDrawerItemSubLabel({
    Color? color,
  }) {
    return TextStyle(
      fontSize: 12,
      color: color ?? AppColors.text[400],
    );
  }

  static TextStyle navigationDrawerHeaderTitle = TextStyle(
    color: AppColors.whiteText,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static TextStyle navigationDrawerHeaderSubtitle = TextStyle(
    color: AppColors.cream,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  //card
  static TextStyle cardItemModuleFlatRounded = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle cardItemModuleCircleLabel({
    Color? color,
  }) {
    return TextStyle(
      fontSize: 13,
      height: 1.5,
      overflow: TextOverflow.ellipsis,
      color: color ?? AppColors.text,
    );
  }

  static TextStyle cardPurchaseLabel = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  //carousel
  static TextStyle carouselItemLabel = const TextStyle(
    overflow: TextOverflow.ellipsis,
    fontSize: 13,
    height: 1.5,
  );

  //Text Field
  static TextStyle basicTextFieldHintText({
    Color? color,
  }) {
    return TextStyle(
      height: 1.5,
      fontSize: 14,
      color: color ?? AppColors.defaultTextFieldHintColor,
    );
  }

  static TextStyle basicTextFieldLabelText({
    Color? color,
  }) {
    return TextStyle(
      color: color ?? AppColors.defaultTextFieldLabelColor,
    );
  }

  static TextStyle basicTextFieldText = const TextStyle(
    height: 1.5,
    fontSize: 14,
  );

  static TextStyle basicFrameTextFieldText({
    double? fontSize,
  }) {
    return TextStyle(
      height: 1.5,
      color: AppColors.text,
      fontSize: fontSize ?? 14,
    );
  }

  static TextStyle circleIconTextFieldText = const TextStyle(
    height: 1.5,
    color: Colors.white,
  );

  static TextStyle capsuleIconTextFieldLabelText({
    Color? color,
  }) {
    return TextStyle(
      color: color ?? AppColors.defaultTextFieldCapsuleIconLabelColor,
    );
  }

  static TextStyle capsuleIconTextFieldText = TextStyle(
    height: 1.5,
    color: AppColors.text,
    fontSize: 16,
  );

  static TextStyle circleOtpTextFieldText = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  //label
  static TextStyle labelFieldLabel = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle labelHeaderLabel = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static TextStyle labelHeaderLabelTale = const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis);

  static TextStyle labelBasicTextSpan = TextStyle(
    color: AppColors.text,
    fontSize: 14,
    height: 1.5,
  );

  static TextStyle labelBasicTextSpanClickAble = TextStyle(
    color: AppColors.primary,
    fontSize: 14,
    height: 1.5,
  );

  static TextStyle labelBasicLinkText({
    Color? color,
    double? fontSize,
  }) {
    return TextStyle(
      color: color ?? AppColors.defaultTextFieldCapsuleIconLabelColor,
      fontSize: fontSize ?? 12,
      fontWeight: FontWeight.w500,
    );
  }

  //content
  static TextStyle contentBasicTitle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static TextStyle contentBasicSubtitle = const TextStyle(
    height: 1.5,
    fontSize: 12,
    overflow: TextOverflow.ellipsis,
  );

  static TextStyle contentBasicHeaderTitle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  //capsule button
  static TextStyle basicCapsuleButtonText({
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
      color: color ?? AppColors.defaultCapsuleButtonContentColor,
    );
  }

  //flat button
  static TextStyle flatTextIconAssetButtonText({
    Color? color,
  }) {
    return TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.bold,
      color: color ?? AppColors.flatTextIconAssetButtonContentColor,
    );
  }

  //image button
  static TextStyle imageButtonText({
    Color? color,
  }) {
    return TextStyle(color: color ?? Colors.white, fontSize: 28, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis);
  }

  //permission
  static TextStyle permissionTitleText({
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      height: 1.5,
      color: color ?? AppColors.permissionTitleColor,
    );
  }

  static TextStyle permissionDescriptionText({
    Color? color,
  }) {
    return TextStyle(
      height: 1.5,
      color: color ?? AppColors.permissionDescriptionColor,
    );
  }

  //general form header nav bar get view
  static TextStyle baseFormHeaderNavBarTitle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  static TextStyle baseFormHeaderNavBarSubTitle = TextStyle(
    color: AppColors.baseFormHeaderNavBarSubTitle,
    fontSize: 13,
    height: 1.5,
  );

  //login page
  static TextStyle loginHeaderTitle = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 28,
  );

  static TextStyle loginHeaderSubtitle = TextStyle(
    color: AppColors.baseFormHeaderNavBarSubTitle,
    fontSize: 13,
    height: 1.5,
  );

  static TextStyle loginFooterDarkTitle = const TextStyle(
    fontSize: 12,
    color: Colors.white,
  );

  static TextStyle loginFooterLightTitle = TextStyle(
    fontSize: 12,
    color: AppColors.text,
  );

  //otp page
  static TextStyle otpPageCountDownText = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  //home page qr menu
  static TextStyle homePageQrMenuManualBookText = const TextStyle(
    fontSize: 18,
    height: 1.5,
  );

  //direct transaction page
  static TextStyle directTransactionNominal = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis,
  );

  static TextStyle directTransactionFlatButtonText = const TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  //general loading and error
  static TextStyle baseLoadingAndErrorTitleInformation = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static TextStyle baseLoadingAndErrorSubtitleInformation = TextStyle(
    color: AppColors.darkGrey,
    height: 1.5,
  );
}
