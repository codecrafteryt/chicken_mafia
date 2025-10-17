/*
  ---------------------------------------
  Project: Chicken Mafia Mobile Application
  Date: Oct 16, 2025
  Author: Ch Salman
  ---------------------------------------
  Description: Home Screen
*/

import 'package:chicken_mafia/utils/values/my_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/values/my_color.dart';
import 'widgets/custom_button.dart';
import 'splash_screen/splash_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary,
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              MyImages.boss,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            const SizedBox(height: 50),
            CustomButton(
              text: "Start Game",
              width: double.infinity,
              backgroundColor: const Color(0xFF1E1E1E),
              borderColor: const Color(0xFF2C2C2E),
              textColor: Colors.white70,
              fontSize: 18,
              borderRadius: 20,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  offset: const Offset(0, 6),
                  blurRadius: 15,
                ),
              ],
              onPressed: () {
                Get.snackbar(
                  'Track Library',
                  'Track Library feature coming soon!',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.black87,
                  colorText: Colors.white,
                );
              },
            ),
            CustomButton(
              text: "Track Library",
              width: double.infinity,
              backgroundColor: const Color(0xFF1E1E1E),
              borderColor: const Color(0xFF2C2C2E),
              textColor: Colors.white70,
              fontSize: 18,
              borderRadius: 20,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  offset: const Offset(0, 6),
                  blurRadius: 15,
                ),
              ],
              onPressed: () {
                Get.snackbar(
                  'Track Library',
                  'Track Library feature coming soon!',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.black87,
                  colorText: Colors.white,
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
