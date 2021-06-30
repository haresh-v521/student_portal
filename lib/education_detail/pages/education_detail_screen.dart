import 'package:flutter/material.dart';
import 'package:student_portal/common/appbar_widget.dart';
import 'package:student_portal/common/icon_and_image.dart';
import 'package:student_portal/common/space_and_divider.dart';
import 'package:student_portal/common/text_and_style.dart';
import 'package:student_portal/features/home/presentation/widget/CustomBottomNavigationBar.dart';
import 'package:student_portal/navigators/navigator_route.dart';
import 'package:student_portal/ui_helper/colors.dart';
import 'package:student_portal/ui_helper/images.dart';
import 'package:student_portal/ui_helper/strings.dart';
import 'package:student_portal/utils/screen_utils.dart';

class EducationDetailScreen extends StatefulWidget {
  @override
  _EducationDetailScreenState createState() => _EducationDetailScreenState();
}

class _EducationDetailScreenState extends State<EducationDetailScreen> {
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
      body: Container(
        height: height,
        width: width,
        child: Container(
          color: bgSecColor,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: white,
                height: 120,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: _navBarItemList,
                  ),
                ),
              ),
              verticalSpace(10.0),
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
                      verticalSpace(16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          labelWithText(
                            textLabel: education_title,
                            text: "",
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed(editEducation);
                            },
                            child: labelWithText(
                              textLabel: "Edit",
                              text: "",
                              textStyleLabel: nunitoSemiBold(size: 12,color: bluColor)
                            ),
                          ),
                        ],
                      ),
                      label(
                        textLabel: "Course",
                        text: "B.Tech",
                      ),
                      verticalSpace(16.0),
                      label(
                        textLabel: "Percentage",
                        text: "7.9 CGPA",
                      ),
                      verticalSpace(16.0),
                      label(
                        textLabel: "School name",
                        text: "Indian Institute of Technology, Hyderabad",
                      ),
                      verticalSpace(16.0),
                      label(
                        textLabel: "Stream",
                        text: "Computer Science Engineering",
                      ),
                      verticalSpace(16.0),
                      label(
                        textLabel: "Number of backlogs",
                        text: "01",
                      ),
                      verticalSpace(16.0),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          label(
                            textLabel: "Start Date",
                            text: "24/07/2017",
                          ),horizontalSpace(30),
                          label(
                            textLabel: "End Date",
                            text: "26/05/2021",
                          ),
                        ],
                      ),verticalSpace(16.0),
                      Row(
                        children: [
                          Expanded(
                            child: label(
                              textLabel: "Document",
                              text: "Sem 7.PDF",
                            ),
                          ),
                          Images.instance.assetImage(name: dlt_icon)
                        ],
                      ),
                      verticalSpace(16.0),
                    ],
                  ),
                ),
              ),
              MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  onPressed:(){},
                  color: primaryDarkColor,
                  child: labels(text: 'Add',textStyle:nunitoRegular(color: Colors.white,size: 18) )
              )
            ],
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
