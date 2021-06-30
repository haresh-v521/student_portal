import 'package:flutter/material.dart';
import 'package:student_portal/common/space_and_divider.dart';
import 'package:student_portal/ui_helper/colors.dart';
import 'package:student_portal/ui_helper/strings.dart';

Widget labels({
  @required String text,
  Color color,
  TextStyle textStyle,
  double size,
  double height,
  TextAlign textAlign,
  FontWeight fontWeight,
  String fontFamily = CustomFont,
  TextOverflow overflow,
  int maxline,
  bool maxLineAuto = false,
}) =>
    Text(
      text ?? '',
      overflow: (maxLineAuto) ? TextOverflow.visible : overflow ?? TextOverflow.ellipsis,
      maxLines: (maxLineAuto) ? maxline : maxline ?? 1,
      style: textStyle ??
          defaultTextStyle(
            color: color,
            size: size ?? 14,
            height: height,
            fontWeight: fontWeight,
            fontFamily: fontFamily,
          ),
      textAlign: textAlign ?? TextAlign.center,
    );

Widget label({
  @required String textLabel,
  Color colorLabel,
  TextStyle textStyleLabel,
  TextAlign textAlignLabel,
  TextOverflow overflowLabel,
  int maxlineLabel,
  bool maxLineAutoLabel = false,
  bool isLabel = true,
  String text,
  Color color,
  TextStyle textStyle,
  TextAlign textAlign,
  TextOverflow overflow,
  int maxline,
  bool maxLineAuto = false,
  List<String> tagList,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      labels(
        text: textLabel,
        textStyle: textStyleLabel ??
            nunitoRegular(
              color: labelLightColor,
              size: 14.0,
            ),

        textAlign: textAlignLabel,
        maxline: maxlineLabel,
        maxLineAuto: maxLineAutoLabel,
      ),
      verticalSpace(4.0),
      if (isLabel)
        labels(
          text: "$text",
          textStyle: textStyle ??
              nunitoBold(
                color: black,
                size: 14.0,
              ),
          textAlign: textAlign,
          maxline: maxline,
          maxLineAuto: maxLineAuto,
        )
      else
        Wrap(
          children: tagList.map((value) {
            return InterestTag(text: value, borderColor: purpleColor);
          }).toList(),
        )
    ],
  );
}


Widget labelWithText({
  @required String textLabel,
  Color colorLabel,
  TextStyle textStyleLabel,
  TextAlign textAlignLabel,
  TextOverflow overflowLabel,
  int maxlineLabel,
  bool maxLineAutoLabel = false,
  bool isLabel = true,
  String text,
  Color color,
  TextStyle textStyle,
  TextAlign textAlign,
  TextOverflow overflow,
  int maxline,
  bool maxLineAuto = false,
  List<String> tagList,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      labels(
        text: textLabel,
        textStyle: textStyleLabel ??
            nunitoBold(
              color: black,
              size: 14.0,
            ),
        textAlign: textAlignLabel,
        maxline: maxlineLabel,
        maxLineAuto: maxLineAutoLabel,
      ),
      verticalSpace(4.0),
      if (isLabel)
        labels(
          text: "$text",
          textStyle: textStyle ??
              nunitoRegular(
                color: labelLightColor,
                size: 14.0,
              ),
          textAlign: textAlign,
          maxline: maxline,
          maxLineAuto: maxLineAuto,
        )
      else
        Wrap(
          children: tagList.map((value) {
            return InterestTag(text: value, borderColor: purpleColor);
          }).toList(),
        )
    ],
  );
}

Widget InterestTag({
  String text,
  Color borderColor,
  Color backgroundColor,
  Color textColor,
}) =>
    Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 4, right: 5),
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: borderColor ?? Colors.transparent),
            color: backgroundColor ?? Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: labels(text: text, textStyle: nunitoSemiBold(size: 13, color: textColor ?? black)),
          )),
    );

TextStyle defaultTextStyle({
  Color color,
  double size,
  FontWeight fontWeight,
  double height,
  String fontFamily = CustomFont,
}) =>
    TextStyle(
      color: color ?? white,
      fontSize: size,
      height: height ?? 1.0,
      fontWeight: fontWeight ?? FontWeight.normal,
      fontFamily: fontFamily,
    );

TextStyle nunitoLight({Color color, double size, double height = 1.0}) {
  return TextStyle(color: color, height: height, fontSize: size, fontFamily: CustomFont, fontWeight: FontWeight.w300);
}

TextStyle nunitoRegular({Color color, double size, double height = 1.0}) {
  return TextStyle(color: color, height: height, fontSize: size, fontFamily: CustomFont, fontWeight: FontWeight.w400);
}

TextStyle nunitoSemiBold({Color color, double size, double height = 1.0}) {
  return TextStyle(color: color, height: height, fontSize: size, fontFamily: CustomFont, fontWeight: FontWeight.w600);
}

TextStyle nunitoBold({Color color, double size, double height = 1.0}) {
  return TextStyle(color: color, height: height, fontSize: size, fontFamily: CustomFont, fontWeight: FontWeight.w700);
}

TextStyle nunitoExtraBold({Color color, double size, double height = 1.0}) {
  return TextStyle(color: color, height: height, fontSize: size, fontFamily: CustomFont, fontWeight: FontWeight.w800);
}

TextStyle commonTextStyle({Color color}) => TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 18,
      height: 1.0,
      color: color ?? black,
    );
