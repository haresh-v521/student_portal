

import 'package:flutter/material.dart';
import 'package:student_portal/education/presentation/pages/edit_education.dart';
import 'package:student_portal/education_detail/pages/education_detail_screen.dart';
import 'package:student_portal/features/home/presentation/pages/home_screen.dart';

import '../main.dart';

Map<String, WidgetBuilder> routes = {
  rootScreen: (context) => MyApp(),
  homeScreen: (context) => HomeScreen(),
  editEducation:(context)=> EditEducation(),
  educationDetailScreen:(context)=>EducationDetailScreen()
};

const String rootScreen = "/";
const String homeScreen = "homeScreen";
const String editEducation="editEducation";
const String educationDetailScreen="educationDetailScreen";
