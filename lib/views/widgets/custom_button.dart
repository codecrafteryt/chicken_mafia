/*
  ---------------------------------------
  Project: Chicken Mafia Mobile Application
  Date: Oct 16, 2025
  Author: Ch Salman
  ---------------------------------------
  Description: Custom Button with Gradient Border & Background
*/

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Gradient? backgroundGradient;
  final Color? textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? borderColor;
  final Gradient? borderGradient;
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
    this.backgroundGradient,
    this.textColor,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w600,
    this.borderColor,
    this.borderGradient,
    this.borderRadius = 14,
    this.borderWidth = 2,
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

    // If there's a gradient border, wrap in a gradient container
    if (borderGradient != null && !isDisabled) {
      return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: borderGradient,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: boxShadow,
        ),
        child: Container(
          margin: EdgeInsets.all(borderWidth),
          decoration: BoxDecoration(
            color: backgroundGradient == null ? effectiveBgColor : null,
            gradient: backgroundGradient,
            borderRadius: BorderRadius.circular(borderRadius - borderWidth),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: isDisabled ? null : onPressed,
              borderRadius: BorderRadius.circular(borderRadius - borderWidth),
              child: Container(
                padding: padding,
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: textColor ?? Colors.white,
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    // Regular border or no border with optional gradient background
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundGradient == null ? effectiveBgColor : null,
        gradient: backgroundGradient,
        borderRadius: BorderRadius.circular(borderRadius),
        border: borderColor != null
            ? Border.all(color: borderColor!, width: borderWidth)
            : null,
        boxShadow: boxShadow,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isDisabled ? null : onPressed,
          borderRadius: BorderRadius.circular(borderRadius),
          child: Container(
            padding: padding,
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: textColor ?? Colors.white,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}