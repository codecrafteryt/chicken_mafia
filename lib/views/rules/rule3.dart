import 'package:chicken_mafia/utils/extensions/extensions.dart';
import 'package:chicken_mafia/views/rules/rule1.dart';
import 'package:chicken_mafia/views/rules/rule2.dart';
import 'package:chicken_mafia/views/rules/rule4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/values/my_color.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_gradient_rule_widget.dart';
import '../widgets/top_button.dart';

class Rule3 extends StatelessWidget {
  const Rule3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              height: 440,
              rules: [
                {
                  'number': '2.2.',
                  'text': "First game ‘night’"
                },
                {
                  'number': '2.2.1.',
                  'text': "At the Referee's announcement, players who have received ‘black’ cards remove their masks and introduce themselves to each other. Don assigns the order of ‘shooting’ for subsequent “nights”. The ‘black’ team has exactly 1 minute for all of the above actions. After that, at the Referee's announcement, the ‘black’ players put on their masks and ‘fall asleep’.",
                },
                {
                  'number': '2.2.2.',
                  'text': "At the Referee's announcement, first the Don, without removing his mask, gestures to show that he is the Don, and then the Sheriff, without removing his mask, gestures to show that he is the Sheriff. On subsequent nights, the Don will ‘wake up’ to find the Sheriff of the game, and the Sheriff will ‘wake up’ to check",
                },
              ],
            ),

            150.sbh,
            CustomButton(
              text: "Next",
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
              onPressed: () {
                Get.to(() => Rule4(),);
              },
            ),
            const SizedBox(height: 25),
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
                Get.to(() => Rule2());
              },
            ),
          ],
        ),
      ),
    );
  }
}
