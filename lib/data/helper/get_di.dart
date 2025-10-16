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

class DependencyInjection {
  static void init() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    //Get.lazyPut(() => SearchesController(searchRepo: Get.find(), sharedPreferences: Get.find(),), fenix: true);
  }
}