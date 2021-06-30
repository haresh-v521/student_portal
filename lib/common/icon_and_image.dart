import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_portal/ui_helper/colors.dart';

Widget icons({@required IconData icon, Color color, double size}) =>
    Icon(icon, color: color ?? black, size: size ?? 24);

class Images {
  Images._privateConstructor();

  static final Images _instance = Images._privateConstructor();

  static Images get instance => _instance;

/*
  CachedNetworkImage networkImage(
          {String url, double height, double width, Color color, BoxFit fit}) =>
      CachedNetworkImage(
        imageUrl: url,
        width: width,
        height: height,
        color: color,
        fit: fit,
        progressIndicatorBuilder: (context, url, downloadProgress) => Center(
            child: CircularProgressIndicator(value: downloadProgress.progress)),
      );
*/

  Image assetImage(
          {@required String name,
          double height,
          double width,
          Color color,
          BoxFit fit}) =>
      Image.asset(name, height: height, width: width, color: color, fit: fit);

  ImageProvider networkImageProvider({String url}) => NetworkImage(url);

  ImageProvider assetImageProvider({String name}) => AssetImage(name);

  Image fileImage(
          {@required File file,
          double height,
          double width,
          Color color,
          BoxFit fit}) =>
      Image.file(file, height: height, width: width, color: color, fit: fit);
}
