import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:login_page_ui/core/constants/strings.dart';
import 'package:login_page_ui/core/constants/styles.dart';
import 'package:login_page_ui/ui/custom_widgets/custom_button.dart';
import 'package:login_page_ui/ui/screens/auth/forgot_screen.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ForgotScreen()));
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text(
          "Verify",
          style: headingtext,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: Image.asset(
                  "$verify_image",
                  scale: 3.7,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Enter OTP",
                style: headingtext.copyWith(fontSize: 28),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "A 4 digit OTP has been sent to",
                style: subtext.copyWith(color: Colors.black54),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "+92 345 678 23",
                style: headingtext.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),
              Pinput(),
              SizedBox(
                height: 30,
              ),
              CustomButton(text: "Verify")
            ],
          ),
        ),
      ),
    );
  }
}
