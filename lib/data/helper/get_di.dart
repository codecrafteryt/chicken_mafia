/*
  ---------------------------------------
  Project: Chicken Mafia Mobile Application
  Date: Oct 16, 2025
  Author: Ch Salman
  ---------------------------------------
  Description: DI
*/

// dependency_injection.dart
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../controllers/track_library_controller.dart';

class DependencyInjection {
  static Future<void> init() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    Get.put<SharedPreferences>(sharedPreferences);

    // Initialize TrackLibraryController
    Get.put<TrackLibraryController>(
      TrackLibraryController(prefs: sharedPreferences),
    );

    //Get.lazyPut(() => SearchesController(searchRepo: Get.find(), sharedPreferences: Get.find(),), fenix: true);
  }
}
