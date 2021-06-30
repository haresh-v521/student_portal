import 'package:flutter/material.dart';
import 'package:student_portal/common/icon_and_image.dart';
import 'package:student_portal/common/space_and_divider.dart';
import 'package:student_portal/common/text_and_style.dart';
import 'package:student_portal/ui_helper/colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<String> iconList;
  final List<String> titleList;

  CustomBottomNavigationBar({this.defaultSelectedIndex = 0, @required this.iconList, this.titleList, @required this.onChange});

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<String> _iconList = [];
  List<String> _titleList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
    _titleList = widget.titleList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], _titleList[i], i));
    }

    return Container(
      child: Card(
        margin: EdgeInsets.only(bottom: 16.0,left: 13.0,right: 13.0),
        elevation: 8.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(60.0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _navBarItemList,
        ),
      ),
    );
  }

  Widget buildNavBarItem(String icon, String title, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        decoration: index == _selectedIndex
            ? BoxDecoration(
                border: Border(
                  top: BorderSide(width: 4, color: purpleColor),
                ),
              )
            : BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Images.instance.assetImage(name: icon, color: index == _selectedIndex ? purpleColor : lightGrayColor),
            verticalSpace(5.0),
            labels(
                text: title,
                textStyle: nunitoBold(
                  color: index == _selectedIndex ? purpleColor : lightGrayColor,
                  size: 10.0,
                ),),
          ],
        ),
      ),
    );
  }
}
