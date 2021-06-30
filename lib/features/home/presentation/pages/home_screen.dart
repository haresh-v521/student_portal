import 'package:flutter/material.dart';
import 'package:student_portal/common/appbar_widget.dart';
import 'package:student_portal/common/icon_and_image.dart';
import 'package:student_portal/common/space_and_divider.dart';
import 'package:student_portal/common/text_and_style.dart';
import 'package:student_portal/features/home/presentation/widget/CustomBottomNavigationBar.dart';
import 'package:student_portal/ui_helper/colors.dart';
import 'package:student_portal/ui_helper/images.dart';
import 'package:student_portal/ui_helper/strings.dart';
import 'package:student_portal/utils/screen_utils.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedItem = 0;
  final TextEditingController textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Scr.setScreenSize(context);
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        iconList: [
          ic_home,
          ic_activity,
          ic_jobs,
          ic_resume,
          ic_profile,
        ],
        titleList: [
          nav_home,
          nav_activity,
          nav_jobs,
          nav_resume,
          nav_profile,
        ],
        onChange: (val) {
          setState(() {
            _selectedItem = val;
          });
        },
        defaultSelectedIndex: 1,
      ),
      appBar: appbar(title: "Jobs"),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                searchWidget(),
                Card(
                  //margin: EdgeInsets.symmetric(horizontal: 20,),
                  margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  child: Padding(
                    //padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 13.0),

                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 16.0, right: 13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: labels(
                            text: "12 days left",
                            textStyle: nunitoSemiBold(
                              color: greenColor,
                              size: 12.0,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.all(Radius.circular(36.0)),
                                  border: Border.all(width: 2, color: borderColor)),
                              child: Images.instance.assetImage(
                                name: ic_google,
                              ),
                            ),
                            horizontalSpace(10.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  verticalSpace(10.0),
                                  labels(
                                    text: "Google",
                                    textStyle: nunitoBold(
                                      color: black,
                                      size: 14.0,
                                    ),
                                  ),
                                  verticalSpace(4.0),
                                  labels(
                                    text: "Campus Manager",
                                    textStyle: nunitoBold(
                                      color: black,
                                      size: 18.0,
                                    ),
                                  ),
                                  verticalSpace(10.0),
                                  labels(
                                    textAlign: TextAlign.start,
                                    maxline: 2,
                                    text: "Process Date : 18 April 2021- 24 April 2021",
                                    textStyle: nunitoSemiBold(
                                      color: fontLightColor,
                                      size: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        verticalSpace(23.0),
                        labels(
                          textAlign: TextAlign.start,
                          maxline: 2,
                          text: "On-Campus",
                          textStyle: nunitoSemiBold(
                            color: purpleColor,
                            size: 14.0,
                          ),
                        ),
                        verticalSpace(16.0),
                        labelWithText(
                          textLabel: "No of vacancies",
                          text: "30-50",
                        ),
                        verticalSpace(16.0),
                        labelWithText(
                          textLabel: "Location",
                          text: "Hyderabad",
                        ),
                        verticalSpace(16.0),
                        Row(
                          children: [
                            Expanded(
                              child: labelWithText(
                                textLabel: "Salary Fixed",
                                text: "1,25,000",
                              ),
                            ),
                            Expanded(
                              child: labelWithText(
                                textLabel: "Salary Variable",
                                text: "1,45,000",
                              ),
                            ),
                          ],
                        ),
                        verticalSpace(16.0),
                        labelWithText(
                          textLabel: "Skills Required",
                          isLabel: false,
                          tagList: ["Java", ".NET", "Python", "C++", "Oracle", "Unix", "Linux", "PL/SQL"],
                        ),
                        verticalSpace(16.0),
                        Row(
                          children: [
                            Expanded(child: Container(height: 60, child: Images.instance.assetImage(name: ic_close))),
                            Expanded(child: Container(height: 60,child: Images.instance.assetImage(name: ic_tag))),
                            Expanded(child: Container(height: 60,child: Images.instance.assetImage(name: ic_check))),
                          ],
                        ),
                        verticalSpace(16.0),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget searchWidget() {
    return Container(
      color: bgColor,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(60.0))),
              elevation: 3,
              child: Theme(
                data: Theme.of(context).copyWith(splashColor: Colors.transparent),
                child: TextField(
                  autofocus: false,
                  textInputAction: TextInputAction.done,
                  onSubmitted: (value) {
                    if (value.trim().isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text("Searching can't be empty.")));
                      textEditingController.text = "";
                      return;
                    }
                  },
                  style: TextStyle(color: primaryDarkColor, fontSize: 15.0),
                  controller: textEditingController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: lightBlack16,
                    ),
                    contentPadding: const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                    counterText: "",
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(color: Colors.transparent, width: 0.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(color: Colors.transparent, width: 0.0),
                    ),
                    hintText: "Job search by name, company",
                    hintStyle: nunitoSemiBold(size: 15.0, color: lightBlack16),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          horizontalSpace(10.0),
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(60.0))),
            elevation: 3,
            child: IconButton(
              icon: Icon(
                Icons.list,
                color: purpleColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
