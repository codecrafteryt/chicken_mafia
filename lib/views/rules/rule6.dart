import 'package:chicken_mafia/utils/extensions/extensions.dart';
import 'package:chicken_mafia/views/rules/rule4.dart';
import 'package:chicken_mafia/views/rules/rule5.dart';
import 'package:chicken_mafia/views/rules/rule7.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/values/my_color.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_gradient_rule_widget.dart';
import '../widgets/top_button.dart';

class Rule6 extends StatelessWidget {
  const Rule6({super.key});

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
                  'number': '2.5.',
                  'text': "Second and subsequent ‘nights"
                },
                {
                  'number': '2.5.1.',
                  "text": 'At the end of the first game ‘day’, the Judge announces: ‘Night is coming.’ All players immediately put on their game mask',
                },
                {
                  'number': '2.5.2.',
                  'text': "During this and subsequent ‘nights’, the Mafia has the opportunity to ‘shoot’.",
                },
                {
                  'number': '2.5.3.',
                  'text': "The Referee announces: ‘The Mafia goes hunting.’ Then, every night, the Referee announces the numbers of players from 1 to 10. Players on the “black” team ‘shoot’ with their eyes closed by imitating a shot with their fingers raised high in the air.",
                },
                {
                  'number': '2.5.4.',
                  'text': "If players from the ‘black’ team “shoot” at the same player, that player leaves the game table at the end of the ‘night’. The role of the player who left the game is not revealed. The player who left the game has the right to a fin",
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
                Get.to(() => Rule7(),);
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
                Get.to(() => Rule5());
              },
            ),
          ],
        ),
      ),
    );
  }
}
