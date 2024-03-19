import 'package:flutter/material.dart';
import 'package:login_page_ui/core/constants/colors.dart';
import 'package:login_page_ui/core/constants/styles.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  String text;
  String icon;

  CustomContainer({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Image.asset(image as String),
          Image.asset(
            icon,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "$text",
            style: subtext,
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffFDFDFD),
          border: Border.all(color: textfeild_color, width: 1)),
    );
  }
}
