import 'package:flutter/material.dart';

class BaseSpacerView {
  static const w2 = SizedBox(width: 2);
  static const w4 = SizedBox(width: 4);
  static const w5 = SizedBox(width: 5);
  static const w8 = SizedBox(width: 8);
  static const w10 = SizedBox(width: 10);
  static const w16 = SizedBox(width: 16);
  static const w20 = SizedBox(width: 20);
  static const w32 = SizedBox(width: 32);
  static const w64 = SizedBox(width: 64);

  static const h2 = SizedBox(height: 2);
  static const h4 = SizedBox(height: 4);
  static const h5 = SizedBox(height: 5);
  static const h8 = SizedBox(height: 8);
  static const h10 = SizedBox(height: 10);
  static const h16 = SizedBox(height: 16);
  static const h20 = SizedBox(height: 20);
  static const h32 = SizedBox(height: 32);
  static const h64 = SizedBox(height: 64);

  static const heightDistanceTextAndTextSmallest = h2;

  static const heightSmallest = h4;
  static const heightSmall = h8;
  static const heightMedium = h16;
  static const heightLarge = h32;
  static const heightLargest = h64;

  static const widthSmallest = w4;
  static const widthSmall = w8;
  static const widthMedium = w16;
  static const widthLarge = w32;
  static const widthLargest = w64;

  //dialog
  static const dialogIconTitleSpace = w10;
  static const dialogTitleDescriptionSpace = h16;
  static const dialogButtonSpace = w5;
  static const dialogSuccessIconTitleSpace = h10;
  static const dialogSuccessTitleDescriptionSpace = h4;
  static const dialogSuccessDescriptionActionSpace = h8;

  //form text field
  static const formTextFieldCapsuleSpace = h20;

  static const formTextFieldOtpSpace = w10;

  static const formTextFieldBasicFrameSpace = h20;

  //general
  static const heightGeneralContentDistance = h8;
  static const heightGeneralDistanceHeaderTextAndSubText = h4;

  static const widthGeneralDistanceImageAndText = w10;
  static const widthGeneralDistanceHeaderTextAndValueText = w10;

  //Padding

  static const EdgeInsets paddingZero = EdgeInsets.zero;
  static const EdgeInsets paddingSmallest = EdgeInsets.all(4);
  static const EdgeInsets paddingSmall = EdgeInsets.all(8);
  static const EdgeInsets paddingMedium = EdgeInsets.all(16);
  static const EdgeInsets paddingLarge = EdgeInsets.all(32);
  static const EdgeInsets paddingLargest = EdgeInsets.all(64);

  //content
  static const EdgeInsets contentBasicBodyContentSpace = EdgeInsets.only(
    left: 16,
    right: 16,
    bottom: 16,
  );

  //card
  static const EdgeInsets cardPurchaseContentSpace = EdgeInsets.only(
    top: 8,
    bottom: 8,
    left: 16,
    right: 16,
  );

  //dialog
  static const EdgeInsets dialogContentSpace = EdgeInsets.only(
    bottom: 0,
    left: 24,
    right: 24,
    top: 0,
  );
  static const EdgeInsets dialogActionSpace = EdgeInsets.all(8);

  //text field
  static const EdgeInsets textFieldContentPadding = EdgeInsets.only(
    left: 14,
    right: 14,
    top: 10,
    bottom: 10,
  );
}
