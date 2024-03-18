import 'package:flutter/material.dart';
import 'package:login_page_ui/core/constants/strings.dart';
import 'package:login_page_ui/core/constants/styles.dart';

class CustomButton extends StatelessWidget {
  String text;
  //final onpressed;
  CustomButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.black),
      child: Center(
        child: Text(
          "$text",
          style: TextStyle(
              fontFamily: hamon_bold, color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
