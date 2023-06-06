import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../browser_tab/borwser_tab.dart';
import '../../home_tab/home_tab.dart';

class BottomBarController extends GetxController {
  var selectedTab = 0.obs;
  final List<Widget> pages = [
    const HomeTab(),
    const Center(
      child: Text("Products"),
    ),
    const BrowserTab(),
    const Center(
      child: Text("Contact"),
    ),
    const Center(
      child: Text("Settings"),
    ),
  ];

  void changeTab(int index) {
    selectedTab.value = index;
    // Store the selectedTab value
    final box = GetStorage();
    box.write('selectedTab', index);
  }

  @override
  void onInit() {
    super.onInit();
    // Retrieve the stored value for selectedTab
    final box = GetStorage();
    if (box.hasData('selectedTab')) {
      selectedTab.value = box.read('selectedTab');
    }
  }
}
