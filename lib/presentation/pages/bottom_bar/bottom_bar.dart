import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_bible/app/config/app_colors.dart';

import 'controller/bottom_bar_controller.dart';

class BottomNavigationBars extends GetView<BottomBarController> {
  const BottomNavigationBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.pages[controller.selectedTab.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.selectedTab.value,
          onTap: controller.changeTab,
          showUnselectedLabels: true,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          showSelectedLabels: true,
          selectedItemColor: Colors.orangeAccent,
          unselectedItemColor: AppColors.primary,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: "Bible"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "Discover"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: "Add"),
            BottomNavigationBarItem(
                icon: Icon(Icons.mail_outline), label: "Inbox"),
          ],
        ),
      ),
    );
  }
}
