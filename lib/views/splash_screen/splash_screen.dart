/*
  ---------------------------------------
  Project: Chicken Mafia Mobile Application
  Date: Oct 16, 2025
  Author: Ch Salman
  ---------------------------------------
  Description: Home Screen
*/

import 'dart:async';
import 'package:chicken_mafia/utils/values/my_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/values/my_color.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary,
      appBar: AppBar(
        title: const Text(
          'Chicken Mafia',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: MyColors.primary,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.home, size: 100, color: Colors.white),
            const SizedBox(height: 30),
            const Text(
              'Welcome to Chicken Mafia!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
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
            const SizedBox(height: 20),
            CustomButton(
              text: "Back to Splash",
              width: double.infinity,
              backgroundColor: Colors.white,
              textColor: MyColors.primary,
              fontSize: 18,
              borderRadius: 20,
              onPressed: () {
                Get.offAll(() => const SplashScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    statusCheck();
  }

  statusCheck() {
    Timer(const Duration(seconds: 2), () async {
      Get.offAll(() => const HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              MyImages.boss,
              height: 200,
              width: 200,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 30),
            const Text(
              'Chicken Mafia',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
