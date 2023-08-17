import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../bible_tab/bible_tab.dart';
import '../../chat/chat.dart';
import '../../discover_screen/borwser_tab.dart';
import '../../home_tab/home_tab.dart';
import '../../reference/reference_screen.dart';
import '../widget/new_feed.dart';

class BottomBarController extends GetxController {
  var selectedTab = 0.obs;
  bool isSelected = false;
  final List<Widget> pages = [
    const HomeTab(),
    const BibleScreen(),
    const BrowserTab(),
    CreateMemoryScreen(),
    const ChatScreen()
  ];
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  List<Map<String, dynamic>> drawerItem = [
    {'label': 'Home', 'icon': Icons.home_outlined},
    {'label': 'My Wish Lists', 'icon': Icons.list},
    {'label': 'Reference', 'icon': Icons.live_tv},
    {'label': 'Settings', 'icon': Icons.settings},
    {'label': 'Sign Out', 'icon': Icons.logout},
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
