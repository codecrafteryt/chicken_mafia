/*
  ---------------------------------------
  Project: Chicken Mafia Mobile Application
  Date: Oct 18, 2025
  Author: Ch Salman
  ---------------------------------------
  Description: Circular Button with Gradient Border & Background
*/

import 'package:flutter/material.dart';

class CircularTopButton extends StatelessWidget {
  final double size;
  final Color? backgroundColor;
  final Gradient? backgroundGradient;
  final Color? borderColor;
  final Gradient? borderGradient;
  final double borderWidth;
  final Widget? child;
  final VoidCallback? onPressed;
  final List<BoxShadow>? boxShadow;
  final bool isDisabled;

  const CircularTopButton({
    super.key,
    required this.size,
    this.backgroundColor,
    this.backgroundGradient,
    this.borderColor,
    this.borderGradient,
    this.borderWidth = 2,
    this.child,
    this.onPressed,
    this.boxShadow,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveBgColor =
    isDisabled ? Colors.grey.shade800 : (backgroundColor ?? const Color(0xFF1C1C1E));

    // --- With Gradient Border ---
    if (borderGradient != null && !isDisabled) {
      return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: borderGradient,
          boxShadow: boxShadow,
        ),
        child: Container(
          margin: EdgeInsets.all(borderWidth),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundGradient == null ? effectiveBgColor : null,
            gradient: backgroundGradient,
          ),
          child: Material(
            color: Colors.transparent,
            shape: const CircleBorder(),
            child: InkWell(
              onTap: isDisabled ? null : onPressed,
              customBorder: const CircleBorder(),
              child: Center(child: child),
            ),
          ),
        ),
      );
    }

    // --- Without Gradient Border ---
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundGradient == null ? effectiveBgColor : null,
        gradient: backgroundGradient,
        border: borderColor != null
            ? Border.all(color: borderColor!, width: borderWidth)
            : null,
        boxShadow: boxShadow,
      ),
      child: Material(
        color: Colors.transparent,
        shape: const CircleBorder(),
        child: InkWell(
          onTap: isDisabled ? null : onPressed,
          customBorder: const CircleBorder(),
          child: Center(child: child),
        ),
      ),
    );
  }
}
