import 'package:chicken_mafia/utils/extensions/extensions.dart';
import 'package:chicken_mafia/views/rules/rule3.dart';
import 'package:chicken_mafia/views/rules/rule5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/values/my_color.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_gradient_rule_widget.dart';
import '../widgets/top_button.dart';

class Rule4 extends StatelessWidget {
  const Rule4({super.key});

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
                  'number': '2.3.',
                  'text': "Game ‘day’"
                },
                {
                  'number': '2.3.1.',
                "text": 'The judge announces the game phase of the Day. Players remove their masks. Discussion takes place during this phase. On each game day, players are given 1 minute to speak and nominate candidates for voting',
                },
                {
                  'number': '2.3.2.',
                  'text': "Players speak in turn in the order in which they are seated at the game table. The discussion on the first game day is started by player number 1. The discussion on each subsequent game day is started by the player who spoke after the first player in the previous round.",
                },
                {
                  'number': '2.3.3.',
                  'text': "Players have the right to address other players by their game nickname or player number",
                },
                {
                  'number': '2.3.4.',
                  'text': "Players have the right to address the.........",
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
                Get.to(() => Rule5(),);
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
                Get.to(() => Rule3());
              },
            ),
          ],
        ),
      ),
    );
  }
}
