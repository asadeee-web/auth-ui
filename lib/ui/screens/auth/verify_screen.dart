import 'package:flutter/material.dart';
import 'package:login_page_ui/core/constants/styles.dart';
import 'package:login_page_ui/ui/screens/auth/forgot_screen.dart';

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
    );
  }
}
