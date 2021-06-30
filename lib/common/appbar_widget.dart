import 'package:flutter/material.dart';
import 'package:student_portal/common/space_and_divider.dart';
import 'package:student_portal/common/text_and_style.dart';
import 'package:student_portal/ui_helper/colors.dart';
import 'package:student_portal/ui_helper/images.dart';

import 'icon_and_image.dart';

Widget appbar({
  String title,
  Color titleColor = white,
  BuildContext context,
  String logoTitle,
}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(80.0),
    child: AppBar(
      //backgroundColor: Colors.red, // status bar color
      brightness: Brightness.light, // status bar brightness
      automaticallyImplyLeading: false,
      backgroundColor: primaryColor,
      title: Container(
        padding: EdgeInsets.only(left: 16, top: 10),
        color: primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            labels(
              text: title,
              textStyle: nunitoBold(
                color: titleColor,
                size: 24.0,
              ),
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Images.instance.assetImage(name: ic_notification),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Images.instance.assetImage(name: ic_dot,width: 10),
                    ),
                  ],
                ),
                horizontalSpace(16.0),
                Images.instance.assetImage(name: ic_message),
                horizontalSpace(16.0),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
