import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RuleTextWidget extends StatelessWidget {
  final String number;
  final String text;

  const RuleTextWidget({
    Key? key,
    required this.number,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          color: const Color.fromRGBO(139, 149, 165, 1),
          fontFamily: 'Manrope',
          height: 1.5,
        ),
        children: [
          TextSpan(
            text: '$number ',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              fontFamily: 'Manrope',
              color: const Color.fromRGBO(139, 149, 165, 1),

            ),
          ),
          TextSpan(text: text),
        ],
      ),
    );
  }
}
