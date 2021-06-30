import 'package:flutter/material.dart';
import 'package:student_portal/common/text_and_style.dart';
import 'package:student_portal/ui_helper/colors.dart';
import 'package:student_portal/ui_helper/strings.dart';


Widget commonTextField({String hinttxt})=>Container(
  height: 45,
  child: Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: TextField(
          cursorHeight: 15,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8)
            ),
            //contentPadding: EdgeInsets.symmetric(vertical: 15),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
      Positioned(
        left: 10,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          color: Colors.white,
          child: Text(
            hinttxt,
            style: nunitoBold(size: 12,color: labelLightColor),
          ),
        ),
      )
    ],
  ),
);



