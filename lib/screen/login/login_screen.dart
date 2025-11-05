import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_project/screen/sign%20up/sign_up_screen.dart';

import '../../widgets/ui_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UiHelper.customSvg(imgUrl: 'insta_logo.svg'),
              SizedBox(height: 20),
              UiHelper.customTextEditor(
                controller: emailController,
                text: "Email",
                toHide: false,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 15),
              UiHelper.customTextEditor(
                controller: passController,
                text: "Password",
                toHide: true,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Spacer(),
                  UiHelper.customTextButton(
                    text: "Forget Password?",
                    call: () {},
                  ),
                ],
              ),
              SizedBox(height: 18),
              UiHelper.customButton(text: "Login", callBack: () {}),
              SizedBox(height: 10),
              Text(
                "OR",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account?",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  UiHelper.customTextButton(
                    text: "Sign up",
                    call: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
