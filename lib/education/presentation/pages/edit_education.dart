import 'package:flutter/material.dart';
import 'package:student_portal/common/icon_and_image.dart';
import 'package:student_portal/common/space_and_divider.dart';
import 'package:student_portal/common/text_and_style.dart';
import 'package:student_portal/education/presentation/widget/custom_widget.dart';
import 'package:student_portal/navigators/navigator_route.dart';
import 'package:student_portal/ui_helper/colors.dart';
import 'package:student_portal/ui_helper/images.dart';
import 'package:student_portal/ui_helper/strings.dart';
import 'package:student_portal/utils/screen_utils.dart';

class EditEducation extends StatefulWidget {
  const EditEducation({Key key}) : super(key: key);

  @override
  _EditEducationState createState() => _EditEducationState();
}

class _EditEducationState extends State<EditEducation> {
  List dropdownItem=['Give','Follow','ABC'];
  String selectedvalue='Give';
  int _selectedIndex = 5;
  final TextEditingController textEditingController = new TextEditingController();
  final List<String> iconList = [
    ic_profile,
    ic_settings,
    ic_edit,
    ic_jobs,
    ic_cup,
    ic_bages,
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];
    for (var i = 0; i < iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(iconList[i], i));
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          child: Container(
            color: bgSecColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: white,
                  height: 120,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpace(35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: _navBarItemList,
                      ),
                      verticalSpace(20),
                      Container(
                          margin: EdgeInsets.only(left: 20.0),
                          child: labels(text: education_title,textStyle:nunitoBold(size: 18) )),
                    ],
                  ),
                ),
                //verticalSpace(10.0),
                Container(
                  //color: fontLightColor,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Card(
                            elevation: 2,
                            margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  labels(text: education_title,textStyle:nunitoSemiBold(size: 15) ),verticalSpace(20),
                                  commonTextField(hinttxt: percentage_hinttxt),verticalSpace(20),
                                  commonTextField(hinttxt: schoolnm_hinttxt),verticalSpace(20),
                                  commonTextField(hinttxt: stream_hinttxt),verticalSpace(20),
                                  commonTextField(hinttxt: backlog_hinttxt),verticalSpace(20),
                                  Row(
                                    children: [
                                      Expanded(child: commonTextField(hinttxt: startdate_hinttxt)),horizontalSpace(10),
                                      Images.instance.assetImage(name: cal_icon,),horizontalSpace(10),
                                      Expanded(child: commonTextField(hinttxt: startdate_hinttxt)),horizontalSpace(10),
                                      Images.instance.assetImage(name: cal_icon,),horizontalSpace(10),
                                    ],
                                  ),verticalSpace(20),
                                  Row(
                                    children: [
                                      Expanded(child: commonTextField(hinttxt: doc_hinttxt)),horizontalSpace(10),
                                      Images.instance.assetImage(name: vector_icon,),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        MaterialButton(

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            onPressed:(){
                              Navigator.of(context).pushNamed(homeScreen);
                            },
                            color: primaryDarkColor,
                            child: labels(text: 'Save',textStyle:nunitoBold(color: Colors.white,size: 18) )
                        )
                      ],
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildNavBarItem(String icon, int index) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 40.0,
            width: 40.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: index <= _selectedIndex - 1 ? purpleColor : white,
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                border: Border.all(
                    width: index <= _selectedIndex - 1 ? 0 : 1, color: index <= _selectedIndex - 1 ? Colors.transparent : purpleColor50)),
            child: Images.instance.assetImage(
              name: icon,
              color: index <= _selectedIndex - 1 ? white : purpleColor50,
            ),
          ),
        ),
        if(iconList.length-1!=index)
          Container(
            margin: EdgeInsets.only(left: 5.0),
            width: 10.0,
            height: 2.0,
            color: index <= _selectedIndex - 2 ? purpleColor : purpleColor50,
          ),
      ],
    );
  }
}

