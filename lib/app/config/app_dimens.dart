import 'package:flutter/cupertino.dart';

class AppDimens {
  static const double paddingAppBodySmallest = 8.0;
  static const double paddingAppBodySmall = 8.0;
  static const double paddingAppBody = 16.0;
  static const double paddingAppBodyLarge = 32.0;
  static const double paddingAppBodyLargest = 64.0;

  static const double roundedSmall = 5.0;
  static const double roundedMedium = 10.0;
  static const double roundedLarge = 15.0;

  static const double defaultCustomPaddingRadioButton = 15;
  static const double defaultSizeRadioButton = 18;

  static const double defaultCustomPaddingCheckbox = 15;
  static const double defaultSizeCheckbox = 18;

  static const double defaultCustomPaddingSwitch = 15;
  static const double defaultSizeSwitch = 40;

  static const double circularProfileSize = 40;

  static double heightButtomImage(BuildContext context) =>
      MediaQuery.of(context).size.height / 3;
}
