import 'package:chicken_mafia/utils/extensions/extensions.dart';
import 'package:chicken_mafia/views/rules/rule2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/values/my_color.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_gradient_rule_widget.dart';
import '../widgets/rule_text_widget.dart';
import '../widgets/top_button.dart';

class RulesScreen1 extends StatelessWidget {
  const RulesScreen1({super.key});

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
              title: 'Basic concepts',
              rules: [
                {
                  'number': '1.1.',
                  'text': 'Ten people take part in the game. Players are randomly divided into two teams: ‘reds’ (peaceful residents) and ‘blacks’ (mafia). There are seven ‘red’ cards in the game, one of which is the Sheriff, and three ‘black’ cards, one of which is the Don.'
                },
                {
                  'number': '1.2.',
                  'text': 'The game is led by the Judge, who regulates its start, end, and all game phases. The game can be assisted by side Judges.'
                },
                {
                  'number': '1.3.',
                  'text': 'The game has two phases: the "day" phase and the "night" phase.'
                },
                {
                  'number': '1.4.',
                  'text': 'The ‘red’ team wins when all representatives of the ‘black’ team are eliminated from the game. The black team wins when there are an equal number of players from both teams remaining at the game table or when there are more black players than red players. A player is eliminated at the moment of voting or night-time ‘murder’.'
                },
              ],
            ),

            130.sbh,
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
                Get.to(() => Rule2(),);
              },
            ),
          ],
        ),
      ),
    );
  }
}
