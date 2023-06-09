import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../bible_tab/bible_tab.dart';
import '../../chat/chat.dart';
import '../../discover_screen/borwser_tab.dart';
import '../../home_tab/home_tab.dart';
import '../../reference/reference_screen.dart';

class BottomBarController extends GetxController {
  var selectedTab = 0.obs;
  bool isSelected = false;
  final List<Widget> pages = [
    const HomeTab(),
    const BibleScreen(),
    const BrowserTab(),
    const ReferenceScreen(),
    const ChatScreen()
  ];
  List<String> categories = [
    'Travels',
    'Architecture',
    'Food',
    'Decor',
    'Art',
    'Style',
    'DIY',
    'Music',
    'Sports',
    'Beauty',
  ];
   List<int> selectedCategories = [];
  void toggleCategorySelection(int index) {
    if (selectedCategories.contains(index)) {
      selectedCategories.remove(index);
    } else {
      selectedCategories.add(index);
    }
    update();
  }

  bool isCategorySelected(int index) {
    return selectedCategories.contains(index);
  }
  TextEditingController searchTxtField = TextEditingController();

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
