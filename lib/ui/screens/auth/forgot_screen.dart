import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page_ui/core/constants/colors.dart';
import 'package:login_page_ui/core/constants/strings.dart';
import 'package:login_page_ui/core/constants/styles.dart';
import 'package:login_page_ui/ui/custom_widgets/custom_button.dart';
import 'package:login_page_ui/ui/custom_widgets/custom_textfeild.dart';
import 'package:login_page_ui/ui/screens/auth/login_screen.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backround_color,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Forgot",
          style: headingtext,
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                  child: Image.asset(
                "$forgot_image",
                scale: 3.8,
              )),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "Forgot Password?",
                  style: headingtext.copyWith(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Don’t worry! it happens. Please enter phone number associated with your account",
                textAlign: TextAlign.center,
                style: subtext.copyWith(color: Colors.black54),
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                "Enter your mobile number",
                style: subtext,
              ),
              CustomTextFeild(
                hintText: "Phone Number",
                suffex: Icon(Icons.check_circle),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(text: "Get OTP")
            ],
          ),
        ),
      ),
    );
  }
}
