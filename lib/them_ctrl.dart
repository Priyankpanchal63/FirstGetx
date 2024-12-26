import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  // Observable to track current theme mode
  var isDarkTheme = false.obs;

  // Method to toggle theme
  void toggleTheme() {
    isDarkTheme.value = !isDarkTheme.value;
    Get.changeTheme(isDarkTheme.value ? ThemeData.dark() : ThemeData.light());
  }
}
