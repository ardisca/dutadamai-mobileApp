import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  RxBool isDarkModeEnabled = false.obs;

  void toggleDarkMode() {
    isDarkModeEnabled.toggle();
    Get.changeThemeMode(
        isDarkModeEnabled.value ? ThemeMode.dark : ThemeMode.light);
  }
}
