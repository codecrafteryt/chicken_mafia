/*
  ---------------------------------------
  Project: Chicken Mafia Mobile Application
  Date: Oct 16, 2025
  Author: Ch Salman
  ---------------------------------------
  Description: Track Library Screen
*/

import 'package:chicken_mafia/views/rules/rule1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../data/controllers/track_library_controller.dart';
import '../../utils/values/my_color.dart';
import '../role_assignment/role_assignment_screen.dart';
import '../widgets/top_button.dart';
import '../widgets/track_container.dart';
import '../widgets/custom_button.dart';

class TrackLibraryScreen extends StatelessWidget {
  const TrackLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TrackLibraryController controller =
        Get.find<TrackLibraryController>();

    return Scaffold(
      backgroundColor: MyColors.bgDark,
      appBar: AppBar(
        backgroundColor: MyColors.bgDark,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Track Library",
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
        actions: [
          CircularTopButton(
            size: 60,
            borderGradient: const LinearGradient(
              colors: [
                MyColors.lightBtnGreen,
                MyColors.darkBtnGreen,
                MyColors.darkestBtnGreen,
              ],
              begin: Alignment.topLeft,
            ),
            backgroundGradient: const LinearGradient(
              colors: [
                MyColors.lightBtnBgGreen,
                MyColors.darkBtnBgGreen,
              ],
            ),
            child: const Icon(
              Icons.add,
              color: Color.fromRGBO(173, 249, 198, 1),
            ),
            onPressed: () {
              _showAddTrackMenu(context, controller);
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // Main content
          Obx(() {
            if (controller.isLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              );
            }
            return Column(
              children: [
                // Tracks list
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 100, // Space for bottom button
                    ),
                    itemCount: controller.tracks.length,
                    itemBuilder: (context, index) {
                      final track = controller.tracks[index];
                      return TrackContainer(
                        track: track,
                        index: index,
                        totalTracks: controller.tracks.length,
                      );
                    },
                  ),
                ),
              ],
            );
          }),

          // Bottom stuck button
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    MyColors.bgDark.withOpacity(0.0),
                    MyColors.bgDark.withOpacity(0.8),
                    MyColors.bgDark,
                  ],
                ),
              ),
              child: CustomButton(
                text: "Save",
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
                  // Play all tracks functionality
                  print("Play All Tracks pressed");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showAddTrackMenu(
    BuildContext context,
    TrackLibraryController controller,
  ) {
    showModalBottomSheet(
      context: context,
      backgroundColor: MyColors.bgDark,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Select Track to Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Manrope',
                ),
              ),
              const SizedBox(height: 20),
              _buildTrackOption(context, controller, 'Linda track Monkey'),
              _buildTrackOption(context, controller, 'Some of Usd'),
              _buildTrackOption(context, controller, 'Near You'),
              _buildTrackOption(context, controller, 'So Far'),
              _buildTrackOption(context, controller, 'Gotta'),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTrackOption(
    BuildContext context,
    TrackLibraryController controller,
    String trackName,
  ) {
    final bool alreadyExists = controller.tracks.any(
      (track) => track.name == trackName,
    );

    return ListTile(
      leading: Icon(
        alreadyExists ? Icons.check_circle : Icons.music_note,
        color: alreadyExists ? Colors.green : MyColors.primary,
      ),
      title: Text(
        trackName,
        style: TextStyle(
          color: alreadyExists ? MyColors.lightestGrey : Colors.white,
          fontFamily: 'Manrope',
        ),
      ),
      subtitle:
          alreadyExists
              ? const Text(
                'Already added',
                style: TextStyle(color: Colors.green, fontFamily: 'Manrope'),
              )
              : const Text(
                'Tap to add',
                style: TextStyle(fontFamily: 'Manrope'),
              ),
      onTap:
          alreadyExists
              ? null
              : () {
                Navigator.pop(context);
                controller.addPredefinedTrack(trackName);
              },
      enabled: !alreadyExists,
    );
  }
}
