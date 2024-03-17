import 'package:flutter/material.dart';
import 'package:login_page_ui/core/constants/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Login",
            style: headingtext.copyWith(fontSize: 24),
          )),
    );
  }
}
