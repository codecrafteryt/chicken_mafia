import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/values/my_color.dart';
import 'rule_text_widget.dart';

class CustomGradientRuleWidget extends StatelessWidget {
  final String title;
  final List<Map<String, String>> rules;
  final double height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const CustomGradientRuleWidget({
    Key? key,
    required this.title,
    required this.rules,
    this.height = 571,
    this.padding,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      margin: margin ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            MyColors.lightGrey,
            MyColors.mediumGrey,
            MyColors.darkGrey,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Container(
        margin: const EdgeInsets.all(2),
        padding: padding ?? const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              MyColors.bgLight,
              MyColors.bgDark,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromRGBO(139, 149, 165, 1),
                  fontSize: 16.sp,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 16),
              ...rules.map((rule) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: RuleTextWidget(
                  number: rule['number']!,
                  text: rule['text']!,
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
