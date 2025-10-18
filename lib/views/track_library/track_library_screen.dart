import 'package:chicken_mafia/views/widgets/top_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/values/my_color.dart';

class TrackLibraryScreen extends StatelessWidget {
  const TrackLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgDark,
      appBar: AppBar(
          backgroundColor: MyColors.bgDark,
          centerTitle: true,
          title: Text("Track Library",
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(139, 149, 165, 1),
          ),
          ),
          leading: CircularTopButton(
            size: 60,
            borderGradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(89, 157, 156, 1),
                  Color.fromRGBO(18, 62, 62, 1),
                  Color.fromRGBO(12, 53, 51, 1),
                ],
                begin: AlignmentGeometry.topLeft
            ),
            backgroundGradient: const LinearGradient(
              colors: [
                Color.fromRGBO(25, 75, 77, 1),
                Color.fromRGBO(14, 53, 50, 1),
              ],
            ),
            child: const Icon(Icons.arrow_back, color: Color.fromRGBO(79, 92, 112, 1)),
            onPressed: () {
              print("Circular button tapped!");
            },

          ),
          actions: [
            CircularTopButton(
              size: 60,
              borderGradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(89, 157, 156, 1),
                    Color.fromRGBO(18, 62, 62, 1),
                    Color.fromRGBO(12, 53, 51, 1),
                  ],
                  begin: AlignmentGeometry.topLeft
              ),
              backgroundGradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(25, 75, 77, 1),
                  Color.fromRGBO(14, 53, 50, 1),
                ],
              ),
              child: const Icon(Icons.add, color: Color.fromRGBO(173, 249, 198, 1)),
              onPressed: () {
                print("Circular button tapped!");
              },

            ),
          ]
      ),


    );
  }
}
