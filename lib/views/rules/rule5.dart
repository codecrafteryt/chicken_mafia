import 'package:chicken_mafia/utils/extensions/extensions.dart';
import 'package:chicken_mafia/views/rules/rule4.dart';
import 'package:chicken_mafia/views/rules/rule6.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/values/my_color.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_gradient_rule_widget.dart';
import '../widgets/top_button.dart';

class Rule5 extends StatelessWidget {
  const Rule5({super.key});

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
              height: 440,
              rules: [
                {
                  'number': '2.4.',
                  'text': "Voting"
                },
                {
                  'number': '2.4.1.',
                  "text": 'At the end of the ‘day’ discussion, voting takes place. Voting is conducted only among players nominated for voting during the ‘day’ discussion.',
                },
                {
                  'number': '2.4.2.',
                  'text': "During their minute, a player has the right to nominate any player for voting. A player is nominated for voting with a phrase in the present tense: ‘I nominate player No. ...’. In response, if the nomination is accepted, the Judge says: ‘Accepted’.",
                },
                {
                  'number': '2.4.3.',
                  'text': "A player has the right to nominate only one candidate for voting each game day.",
                },
                {
                  'number': '2.4.4.',
                  'text': " Players are voted on in the order in which they were nominated for voting during the ‘day’ discussion.",
                },
                {
                  'number': '2.4.5.',
                  'text': "In order to vote against a particular............",
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
                Get.to(() => Rule6(),);
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
                Get.to(() => Rule4());
              },
            ),
          ],
        ),
      ),
    );
  }
}
