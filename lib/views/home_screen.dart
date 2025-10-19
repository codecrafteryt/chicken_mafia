/*
  ---------------------------------------
  Project: Chicken Mafia Mobile Application
  Date: Oct 16, 2025
  Author: Ch Salman
  ---------------------------------------
  Description: Home Screen
*/

import 'package:chicken_mafia/utils/values/my_images.dart';
import 'package:chicken_mafia/views/track_library/track_library_screen.dart';
import 'package:chicken_mafia/views/widgets/top_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/values/my_color.dart';
import 'widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgDark,
      body: Stack(
        children: [
          // 🏗️ Main content
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.1),
                        offset: const Offset(0, 6),
                        blurRadius: 100,
                        spreadRadius: 20,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    MyImages.boss,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                ),
                const SizedBox(height: 10),
                CustomButton(
                  text: "Start Game",
                  width: double.infinity,
                  backgroundGradient: LinearGradient(
                    colors: [MyColors.lightBtnBgGreen, MyColors.darkBtnBgGreen],
                  ),
                  borderColor: const Color(0xFF2C2C2E),
                  textColor: Colors.white70,
                  fontSize: 18,
                  borderRadius: 20,
                  borderGradient: RadialGradient(
                    colors: [
                      MyColors.lightBtnGreen,
                      MyColors.darkBtnGreen,
                      MyColors.darkestBtnGreen,
                    ],
                    center: Alignment(-0.8, -1.0),
                    radius: 2.3,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: const Offset(0, 6),
                      blurRadius: 15,
                    ),
                  ],
                  onPressed: () {},
                ),
                const SizedBox(height: 25),
                CustomButton(
                  text: "Track Library",
                  width: double.infinity,
                  backgroundGradient: LinearGradient(
                    colors: [MyColors.lightBtnBgBlack, MyColors.darkBtnBgBlack],
                  ),
                  borderColor: const Color(0xFF2C2C2E),
                  textColor: Colors.white70,
                  fontSize: 18,
                  borderRadius: 20,
                  borderGradient: RadialGradient(
                    colors: [
                      MyColors.lightBtnBlack,
                      MyColors.darkBtnBlack,
                      MyColors.darkestBtnBlack,
                    ],
                    center: Alignment(-0.8, -1.0),
                    radius: 2.3,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: const Offset(0, 6),
                      blurRadius: 15,
                    ),
                  ],
                  onPressed: () {
                    Get.to(() => TrackLibraryScreen());
                  },
                ),
              ],
            ),
          ),
          // 🎯 Top-right button
          Positioned(
            top: 40, // adjust for SafeArea
            right: 20,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularTopButton(
                size: 60,
                borderGradient: const LinearGradient(
                  colors: [
                    MyColors.lightBtnGreen,
                    MyColors.darkBtnGreen,
                    MyColors.darkestBtnGreen,
                  ],
                  begin: Alignment.topLeft,
                ),
                backgroundGradient: const LinearGradient(
                  colors: [
                    MyColors.lightBtnBgGreen,
                    MyColors.darkBtnBgGreen,
                  ],
                ),
                child: Image.asset("assets/images/i.png", height: 15),
                onPressed: () {
                  debugPrint("Circular button tapped!");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
