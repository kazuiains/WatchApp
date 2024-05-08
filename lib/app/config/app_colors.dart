import 'package:flutter/material.dart';

class AppColors {
  static const Map<int, Color> primaryColorList = <int, Color>{
    0: Color(0xffffffff),
    50: Color(0xffE3F2FD),
    100: Color(0xffBBDEFB),
    200: Color(0xff90CAF9),
    300: Color(0xff64B5F6),
    400: Color(0xff42A5F5),
    500: Color(0xff2196F3),
    600: Color(0xff1E88E5),
    700: Color(0xff1976D2),
    800: Color(0xff1565C0),
    900: Color(0xff0D47A1)
  };

  static const Map<int, Color> primaryTextColorList = <int, Color>{
    0: Color(0xffffffff),
    50: Color(0xfff5f5f5),
    100: Color(0xffe9e9e9),
    200: Color(0xffd9d9d9),
    300: Color(0xffc4c4c4),
    400: Color(0xff9d9d9d),
    500: Color(0xff7b7b7b),
    600: Color(0xff555555),
    700: Color(0xff434343),
    800: Color(0xff262626),
    900: Color(0xff000000)
  };

  static const Map<int, Color> greenColorList = <int, Color>{
    0: Color(0xffffffff),
    50: Color(0xffddf6f1),
    100: Color(0xfface9d9),
    200: Color(0xff70dbc0),
    300: Color(0xff00cca7),
    400: Color(0xff00bf93),
    500: Color(0xff00b182),
    600: Color(0xff00a374),
    700: Color(0xff009164),
    800: Color(0xff008156),
    900: Color(0xff006339)
  };

  static Color ocean = const Color(0xff2DB1E9);

  static Color red = const Color(0xffEB3B3B);
  static Color darkRed = const Color(0xffC6392A);

  static Color lightOrange = const Color(0xfff09400);
  static Color orange = const Color(0xffFF9800);

  static Color lighterGrey = const Color(0xffFCFCFC);
  static Color lightGrey = const Color(0xffE7E7E7);
  static Color grey = const Color(0xffd3d3d3);
  static Color darkGrey = const Color(0xff808080);

  static Color cream = const Color(0xfffae2b2);

  static Color white1 = const Color(0x03ffffff);
  static Color white15 = const Color(0x26ffffff);
  static Color white25 = const Color(0x40ffffff);
  static Color white70 = const Color(0xB3FFFFFF);
  static Color white85 = const Color(0xd8ffffff);

  static Color primary15 = primary.withOpacity(.15);

  static MaterialColor primary = MaterialColor(
    toInt(primaryColorList[500]),
    primaryColorList,
  );

  static MaterialColor primaryLight = MaterialColor(
    toInt(primaryColorList[200]),
    primaryColorList,
  );

  static MaterialColor primaryDark = MaterialColor(
    toInt(primaryColorList[700]),
    primaryColorList,
  );

  static MaterialColor greenNormal = MaterialColor(
    toInt(greenColorList[300]),
    greenColorList,
  );

  static MaterialColor greenLight = MaterialColor(
    toInt(greenColorList[100]),
    greenColorList,
  );

  static MaterialColor greenDark = MaterialColor(
    toInt(greenColorList[500]),
    greenColorList,
  );

  static MaterialColor whiteText = MaterialColor(
    toInt(primaryTextColorList[0]),
    primaryTextColorList,
  );

  static MaterialColor text = MaterialColor(
    toInt(primaryTextColorList[900]),
    primaryTextColorList,
  );

  static Color bodyColor = Colors.white;
  static Color contentColor = Colors.white;
  static Color contentSpaceColor =  AppColors.lightGrey;

  //language color
  static Color defaultLanguageIndonesiaColor = darkRed;
  static Color defaultLanguageEnglishColor = ocean;

  //modal color
  static Color defaultModalSuccessColor = greenNormal;
  static Color defaultModalErrorColor = darkRed;
  static Color defaultModalWarningColor = orange;
  static Color defaultModalColor = text[600]!;

  //snack bar color
  static Color defaultSnackBarSuccessColor = greenNormal;
  static Color defaultSnackBarErrorColor = darkRed;
  static Color defaultSnackBarWarningColor = orange;
  static Color defaultSnackBarColor = text[800]!;

  // button color
  static Color defaultButtonActiveColor = primary;
  static Color defaultButtonDisableColor = primaryLight;
  static Color defaultBorderButtonTextColor = primary;
  static Color defaultBorderButtonBorderColor = primary;
  static Color defaultButtonDeleteColor = red;
  static Color defaultButtonOverlayColor = Colors.black12;

  // capsule button color
  static Color defaultCapsuleButtonBackgroundColor =
      AppColors.primary;
  static Color defaultCapsuleButtonContentColor = Colors.white;

  // flat icon button color
  static Color flatTextIconAssetButtonContentColor = Colors.white;

  // text field color
  static Color defaultTextFieldEnableBorderColor = lightGrey;
  static Color defaultTextFieldErrorBorderColor = red;
  static Color defaultTextFieldDisableBorderColor = lightGrey;
  static Color defaultTextFieldFocusBorderColor = primary;
  static Color defaultTextFieldLabelColor = text[500]!;
  static Color defaultTextFieldHintColor = primaryTextColorList[500]!;

  static Color defaultTextFieldCircleIconEnableBorderColor = white25;
  static Color defaultTextFieldCircleIconErrorBorderColor = red;
  static Color defaultTextFieldCircleIconDisableBorderColor = lightGrey;
  static Color defaultTextFieldCircleIconFocusBorderColor = Colors.white;
  static Color defaultTextFieldCircleIconHintColor = white70;
  static Color defaultTextFieldCircleIconFillColor = white15;

  static Color defaultTextFieldCapsuleIconEnableBorderColor = lightGrey;
  static Color defaultTextFieldCapsuleIconErrorBorderColor = red;
  static Color defaultTextFieldCapsuleIconDisableBorderColor = darkGrey;
  static Color defaultTextFieldCapsuleIconFocusBorderColor = primary;
  static Color defaultTextFieldCapsuleIconLabelColor = text[500]!;
  static Color defaultTextFieldCapsuleIconFillColor = Colors.white;

  // divider color
  static Color defaultDividerColor = primaryTextColorList[900]!;

  // card color
  static Color defaultCardBorderColor = lightGrey;
  static Color dashboardContentRoundedTopColor = Colors.white;
  static Color dashboardContentRoundedTopContentColor = lightGrey;

  //scanner color
  static Color defaultScannerColor = primary.withOpacity(.33);

  // date picker color
  static MaterialColor defaultDatePickerColor = primaryDark;

  // checkbox color
  static Color defaultCheckboxEnableColor = lightGrey;
  static MaterialColor defaultCheckboxSelectedColor = primary;
  static Color defaultCheckboxDisableColor = lightGrey;

  // radioButton color
  static Color defaultRadioButtonEnableColor = lightGrey;
  static MaterialColor defaultRadioButtonSelectedColor = primary;
  static Color defaultRadioButtonDisableColor = lightGrey;

  // navigation drawer color
  static Color defaultNavigationDrawerSelectedColor = primary;
  static Color defaultNavigationDrawerSelectedTileColor = primary15;

  // image
  static Color circularImageColor = white15;

  //general form header nav bar
  static Color baseFormHeaderNavBarSubTitle = darkGrey;

  //login
  static Color loginBackgroundColorImage = white15;
  static Color loginSubtitleColor = cream;

  //system
  static Color systemNavigationBarColor = primary;

  //carousel
  static Color carouselBackgroundTextColor = white85;

  //permission
  static Color permissionBackgroundColor = Colors.black;
  static Color permissionTitleColor = Colors.white;
  static Color permissionDescriptionColor = darkGrey;

  //colors

  //gradient color
  static List<Color> primaryBackgroundGradientColor = [
    primaryLight,
    primary,
  ];

  static int toInt(Color? color) {
    if (color != null) {
      return int.parse(color.toString().substring(6, 16));
    }
    return 0xffffffff;
  }
}
