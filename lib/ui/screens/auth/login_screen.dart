import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:login_page_ui/core/constants/colors.dart';

import 'package:login_page_ui/core/constants/styles.dart';
import 'package:login_page_ui/ui/custom_widgets/custom_account_container.dart';
import 'package:login_page_ui/ui/custom_widgets/custom_button.dart';
import 'package:login_page_ui/ui/custom_widgets/custom_textfeild.dart';
import 'package:login_page_ui/ui/screens/auth/forgot_screen.dart';
import 'package:login_page_ui/ui/screens/auth/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backround_color,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("Login", style: headingtext)),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
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
                obsecure: true,
                hintText: "Password",
                suffex: Icon(Icons.visibility_off),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ForgotScreen()));
                  },
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "forgot password?",
                      style: subtext,
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              CustomButton(text: "Login"),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: subtext.copyWith(color: Colors.black54),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                      },
                      child: Text(
                        "Sign Up",
                        style: subtext.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "or",
                    style: subtext.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  )),
              SizedBox(
                height: 10,
              ),
              CustomContainer(
                icon: "assets/images/google_icon.png",
                text: "Continue with Google",
              ),
              SizedBox(
                height: 20,
              ),
              CustomContainer(
                icon: "assets/images/apple_icon.png",
                text: "Continue with Apple",
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "or",
                    style: subtext.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  )),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Continue as Guest",
                      style: headingtext.copyWith(
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                          color: Colors.grey),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
