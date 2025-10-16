/*
  ---------------------------------------
  Project: Chicken Mafia Mobile Application
  Date: Oct 16, 2025
  Author: Ch Salman
  ---------------------------------------
  Description: Custom Button
*/

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? borderColor;
  final double borderRadius;
  final double borderWidth;
  final VoidCallback? onPressed;
  final List<BoxShadow>? boxShadow;
  final EdgeInsetsGeometry padding;
  final bool isDisabled;

  const CustomButton({
    super.key,
    required this.text,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w600,
    this.borderColor,
    this.borderRadius = 14,
    this.borderWidth = 1,
    this.onPressed,
    this.boxShadow,
    this.padding = const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveBgColor = isDisabled
        ? Colors.grey.shade800
        : (backgroundColor ?? const Color(0xFF1C1C1E));

    return Column(
      children: [
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
            debugPrint("Track Library clicked");
          },
        ),
      ],
    );
  }
}
