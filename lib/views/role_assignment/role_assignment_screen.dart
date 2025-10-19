import 'package:chicken_mafia/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/values/my_color.dart';
import '../../utils/values/my_images.dart';
import '../widgets/custom_button.dart';
import '../widgets/top_button.dart';

class RoleAssignmentScreen extends StatelessWidget {
  const RoleAssignmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgDark,
      appBar: AppBar(
          backgroundColor: MyColors.bgDark,
          centerTitle: true,
          title: Text("Role assignment",
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
            child: const Icon(Icons.arrow_back, color: Color.fromRGBO(79, 92, 112, 1)),
            onPressed: () {
              Get.back();
              print("Circular button tapped!");
            },

          ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            25.sbh,
            Center(
              child: Container(
                width: 355.w,
                height: 525.h,
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
                  margin: const EdgeInsets.all(3), // 👈 Thickness of gradient border
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.green.withOpacity(0.15),
                              offset: const Offset(0, 6),
                              blurRadius: 60,
                              spreadRadius: 20,
                            ),
                          ],
                        ),
                        child: Image.asset(
                          MyImages.peaceful_boss,
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height * 0.4,
                        ),
                      ),
                      10.sbh,
                      Text(
                        'Peaceful',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 38.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Manrope',
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 300.w,
                        height: 50.h,
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(49, 51, 68, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                            'You',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(139, 149, 165, 1),
                              fontSize: 27.sp,
                              fontFamily: 'Manrope',
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            30.sbh,
            CustomButton(
              text: "Start",
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
              onPressed: () {},
            ),
            15.sbh,
            CustomButton(
              text: "Reroll",
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
               // Get.to(() => TrackLibraryScreen());
              },
            ),
          ],
        ),
      ),

    );
  }
}
