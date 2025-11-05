import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_project/screen/login/login_screen.dart';

import '../../widgets/ui_helper.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();
  TextEditingController userController = TextEditingController();

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
              SizedBox(height: 25),
              UiHelper.customTextEditor(
                controller: emailController,
                text: "Email",
                toHide: false,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 12),
              UiHelper.customTextEditor(
                controller: passController,
                text: "Password",
                toHide: true,
                textInputType: TextInputType.emailAddress,
              ),

              SizedBox(height: 12),
              UiHelper.customTextEditor(
                controller: userController,
                text: "Username",
                toHide: false,
                textInputType: TextInputType.name,
              ),

              SizedBox(height: 36),
              UiHelper.customButton(text: "Sign up", callBack: () {}),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  UiHelper.customTextButton(
                    text: "Login",
                    call: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
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
