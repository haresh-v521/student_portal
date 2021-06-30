
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student_portal/ui_helper/colors.dart';
import 'package:student_portal/ui_helper/strings.dart';
import 'package:student_portal/utils/screen_utils.dart';

import 'navigators/navigator_route.dart';

setUpAll() async {
  WidgetsFlutterBinding.ensureInitialized();
}

Future<void> main() async {
  await setUpAll();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: primaryColor, // navigation bar color
    statusBarColor: primaryColor, // status bar color
  ));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: appName,
    theme: ThemeData(primarySwatch: Colors.blue,
        primaryColor: primaryColor,
        primaryColorDark: primaryDarkColor,
        fontFamily: CustomFont),
    home: MyApp(),
  ));

}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    Scr.setScreenSize(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: primaryColor,
        primaryColorDark: primaryDarkColor,
          fontFamily: CustomFont
      ),
      routes: routes,
      initialRoute: getInitialRoute(),
    );
  }
}

String getInitialRoute() {
  return educationDetailScreen;
}
