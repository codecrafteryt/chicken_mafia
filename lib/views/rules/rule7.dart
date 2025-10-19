import 'package:chicken_mafia/utils/extensions/extensions.dart';
import 'package:chicken_mafia/views/rules/rule4.dart';
import 'package:chicken_mafia/views/rules/rule5.dart';
import 'package:chicken_mafia/views/rules/rule6.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/values/my_color.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_gradient_rule_widget.dart';
import '../widgets/top_button.dart';

class Rule7 extends StatelessWidget {
  const Rule7({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MyColors.bgDark,
      appBar: AppBar(
        surfaceTintColor: MyColors.bgDark,
        backgroundColor: MyColors.bgDark,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Rules",
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w300,
            color: Color.fromRGBO(139, 149, 165, 1),
            fontFamily: 'RubikMonoOne',
          ),
        ),
        leading: CircularTopButton(
          size: 60,
          borderGradient: LinearGradient(
            colors: [
              MyColors.lightBtnBlack,
              MyColors.darkBtnBlack,
              MyColors.darkestBtnBlack,
            ],
            begin: Alignment.topLeft,
          ),
          backgroundGradient: const LinearGradient(
            colors: [MyColors.lightBtnBgBlack, MyColors.darkBtnBgBlack],
          ),
          child: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(79, 92, 112, 1),
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomGradientRuleWidget(
              title: 'Game positions',
              height: 580,
              rules: [
                {
                  'number': '2.6.',
                  'text': "Further course of the game"
                },
                {
                  'number': '2.6.1.',
                  "text": 'In subsequent ‘days’ and ‘nights,’ the course of the game does not change; the phases of the game alternate until one team wins.',
                },
                {
                  'number': '2.5.2.',
                  'text': "During this and subsequent ‘nights’, the Mafia has the opportunity to ‘shoot’.",
                },
                {
                  'number': '2.5.10.1.',
                  'text': "During the ‘night,’ it is forbidden to sing, dance, talk, touch other players, eat or drink, smoke, or perform other actions that go beyond the scope of ‘night-time’ behaviour.",
                },
                {
                  'number': '2.5.10.2.',
                  'text': "The game mask must be worn on an elastic band and tightly cover the eyes without creating a gap around the perimeter of the eyes. The use of masks that do not fit properly is not permitted. It is forbidden to hold the mask with your hands or press it additionally to your face.",
                },
                {
                  'number': '2.5.10.3.',
                  'text': "Before the onset of ‘night’, players........",
                },
              ],
            ),

            130.sbh,
            CustomButton(
              text: "Previous",
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
                Get.to(() => Rule6());
              },
            ),
          ],
        ),
      ),
    );
  }
}
