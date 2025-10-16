/*
  ---------------------------------------
  Project: Chicken Mafia Mobile Application
  Date: Oct 16, 2025
  Author: Ch Salman
  ---------------------------------------
  Description: Splash Screen UI and some logic.
*/

import 'dart:async';
import 'package:chicken_mafia/utils/extensions/extensions.dart';
import 'package:chicken_mafia/utils/values/my_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // _checkLoginStatus();
    statusCheck();
  }

  // // Method to check login status and navigate accordingly
  // void _checkLoginStatus() {
  //   final auth = FirebaseAuth.instance;
  //   final user = auth.currentUser;
  //
  //   if (user != null) {
  //     Timer(const Duration(seconds: 5), () => Get.off(() => const HomePages()),
  //     );
  //   } else {
  //     Timer(const Duration(seconds: 5), () => Get.off(() => OnboardingScreen()),
  //     );
  //   }
  // }

  statusCheck() {
    Timer(const Duration(seconds: 2), () async {
         // Get.offAll(() => const LoginScreen());

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0.w),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 200.w,
                  ),
                ),
                20.sbh,
                const CircularProgressIndicator(
                  strokeWidth: 5,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    MyColors.black,
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 150,
            left: 0,
            right: 0,
            child: Text(
              "Version: 1.0.2",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: MyColors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}