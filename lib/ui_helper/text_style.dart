

import 'package:flutter/material.dart';
import 'package:student_portal/ui_helper/strings.dart';
import 'package:student_portal/utils/screen_utils.dart';

import 'colors.dart';

TextStyle defaultHomeTextStyle({Color color, double size}) =>
    TextStyle(color: color ?? white, fontFamily: CustomFont, fontSize: size);

TextStyle defaultDrawerLabelTextStyle({Color color, double size}) =>
    TextStyle(color: color, fontFamily: CustomFont, fontSize: size, fontWeight: FontWeight.bold);

TextStyle defaultLabelStyle(color, backgroundColor, {bool isReversed = false}) => TextStyle(
    fontSize: 12, fontWeight: FontWeight.w500, fontFamily: CustomFont, color: color, backgroundColor: backgroundColor);

TextStyle defaultUserNameStyle(color, backgroundColor, {bool isReversed = false}) => TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: color,
      fontFamily: CustomFont,
    );

TextStyle defaultBlueUserTitleStyle = TextStyle(
  color: primaryColor,
  fontWeight: FontWeight.normal,
  fontFamily: CustomFont,
  fontSize: width * 0.035,
);

TextStyle defaultBlakeUserTitleStyle = TextStyle(
  fontSize: width * 0.035,
  fontFamily: CustomFont,
  fontWeight: FontWeight.bold,
);

//Dyanmic Size
TextStyle defaultTextStyleSize(
        {@required double fontSize, Color color = black, FontWeight fontWeight = FontWeight.w400}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight);
//12
TextStyle defTS12B400({double fontSize = 12, Color color = black, FontWeight fontWeight = FontWeight.w400}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight);
TextStyle defTS12B700({double fontSize = 12, Color color = black, FontWeight fontWeight = FontWeight.w700}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight);
//14
TextStyle defTS14B400({double fontSize = 14, Color color = black, FontWeight fontWeight = FontWeight.w400}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight);
TextStyle defTS14B700({double fontSize = 14, Color color = black, FontWeight fontWeight = FontWeight.w700}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight);
//15
TextStyle defTS15B400({double fontSize = 15, Color color = black, FontWeight fontWeight = FontWeight.w400}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight);
TextStyle defTS15B500({double fontSize = 15, Color color = black, FontWeight fontWeight = FontWeight.w500}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight);
TextStyle defTS15B600({double fontSize = 15, Color color = black, FontWeight fontWeight = FontWeight.w600}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight);

//16
const TextStyle defTextStyle16B400 = TextStyle(
  fontSize: 16.0,
  fontFamily: CustomFont,
  color: black,
  fontWeight: FontWeight.w700,
);

TextStyle defTS16B400({double fontSize = 16, Color color = black, FontWeight fontWeight = FontWeight.w400}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight);
TextStyle defTS16B600({double fontSize = 16, Color color = black, FontWeight fontWeight = FontWeight.w600}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight);
TextStyle defTS16B700({double fontSize = 16, Color color = black, FontWeight fontWeight = FontWeight.w700}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight);

//17
const TextStyle defTextStyle17B400 = TextStyle(
  fontSize: 17.0,
  fontFamily: CustomFont,
  color: black,
  fontWeight: FontWeight.w400,
);

//18
TextStyle defTS18B400({double fontSize = 18, Color color = black, FontWeight fontWeight = FontWeight.w400}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight);
TextStyle defTS18B600({double fontSize = 18, Color color = black, FontWeight fontWeight = FontWeight.w600}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight);
TextStyle defTS18B700({double fontSize = 18, Color color = black, FontWeight fontWeight = FontWeight.w700}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight);

//20
TextStyle defTS20B400({double fontSize = 20, Color color = black, FontWeight fontWeight = FontWeight.w400}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight);

//21
TextStyle defTS21B400({double fontSize = 21, Color color = black, FontWeight fontWeight = FontWeight.w400}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight);
TextStyle defTS21B600({double fontSize = 21, Color color = black, FontWeight fontWeight = FontWeight.w600}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight);
TextStyle defTS21B700({double fontSize = 21, Color color = black, FontWeight fontWeight = FontWeight.w700}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight);

// 32
TextStyle defTS32B600({double fontSize = 32, Color color = black, FontWeight fontWeight = FontWeight.w600}) =>
    TextStyle(fontSize: fontSize, fontFamily: CustomFont, color: color, fontWeight: fontWeight, shadows: [
      Shadow(blurRadius: 1.0, color: black, offset: Offset(0.2, 0.4)),
    ]);
