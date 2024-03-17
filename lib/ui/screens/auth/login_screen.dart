import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:login_page_ui/core/constants/colors.dart';
import 'package:login_page_ui/core/constants/styles.dart';
import 'package:login_page_ui/ui/custom_widgets/custom_button.dart';
import 'package:login_page_ui/ui/custom_widgets/custom_textfeild.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backround_color,
      appBar:
          AppBar(centerTitle: true, title: Text("Login", style: headingtext)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Enter your mobile number",
              style: subtext,
            ),
            CustomTextFeild(
                hintText: "Phone Number",
                suffex: Icon(
                  Icons.check_circle,
                  size: 20,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              "Enter your password",
              style: subtext,
            ),
            CustomTextFeild(
              hintText: "Password",
              suffex: Icon(Icons.remove_red_eye),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "forgot password?",
                style: subtext,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            CustomButton(text: "Login")
          ],
        ),
      ),
    );
  }
}
