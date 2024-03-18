import 'package:flutter/material.dart';
import 'package:login_page_ui/core/constants/colors.dart';
import 'package:login_page_ui/core/constants/strings.dart';
import 'package:login_page_ui/core/constants/styles.dart';
import 'package:login_page_ui/ui/custom_widgets/custom_account_container.dart';
import 'package:login_page_ui/ui/custom_widgets/custom_button.dart';
import 'package:login_page_ui/ui/custom_widgets/custom_textfeild.dart';
import 'package:login_page_ui/ui/screens/auth/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backround_color,
      appBar: AppBar(
        title: Text(
          "Register",
          style: headingtext.copyWith(fontSize: 30),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
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
                height: 5,
              ),
              Text(
                "Enter your email",
                style: subtext,
              ),
              CustomTextFeild(
                hintText: "Email",
                suffex: Icon(Icons.email),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Enter your password",
                style: subtext,
              ),
              CustomTextFeild(
                hintText: "Password",
                suffex: Icon(Icons.visibility_off),
                obsecure: true,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Re-Enter your password",
                style: subtext,
              ),
              CustomTextFeild(
                hintText: "Confirm Password",
                suffex: Icon(
                  Icons.visibility_off,
                ),
                obsecure: true,
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(text: "Sign Up"),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: subtext.copyWith(color: Colors.grey),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        "Sign In",
                        style: headingtext.copyWith(fontSize: 16),
                      )),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "or",
                  style: headingtext.copyWith(color: Colors.grey, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomContainer(
                  text: "Continue with Google",
                  icon: "assets/images/google_icon.png"),
              SizedBox(
                height: 10,
              ),
              CustomContainer(
                  text: "Continue with Apple",
                  icon: "assets/images/apple_icon.png")
            ],
          ),
        ),
      ),
    );
  }
}
