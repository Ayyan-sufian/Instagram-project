import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_project/screen/home_screen.dart';
import 'package:instagram_project/screen/login/login_screen.dart';

import '../../widgets/ui_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [UiHelper.customSvg(imgUrl: 'insta_logo.svg')],
        ),
      ),
    );
  }
}
