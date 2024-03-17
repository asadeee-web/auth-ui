import 'package:flutter/material.dart';
import 'package:login_page_ui/core/constants/colors.dart';
import 'package:login_page_ui/core/constants/styles.dart';

class CustomTextFeild extends StatelessWidget {
  String hintText;
  bool? obsecure;
  Widget? suffex;
  Widget? countrycode;

  CustomTextFeild(
      {required this.hintText, this.obsecure, this.suffex, this.countrycode});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Color(0xffFDFDFD),
          filled: true,
          hintText: hintText,
          hintStyle: subtext.copyWith(color: Colors.grey),
          suffixIcon: suffex,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: textfeild_color, width: 1),
              borderRadius: BorderRadius.circular(20)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: textfeild_color, width: 1)),
        ),
      ),
    );
  }
}
