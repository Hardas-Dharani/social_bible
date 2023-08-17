import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_bible/app/config/app_colors.dart';

import '../reference/reference_screen.dart';
import 'controller/bottom_bar_controller.dart';

class BottomNavigationBars extends GetView<BottomBarController> {
  const BottomNavigationBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration:
                    BoxDecoration(color: AppColors.white.withOpacity(0.5)),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzF7xJ5l0YlkeFb-85hvKDGbnBMprT8P8HL5t-ctDH&s'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Tina Doe',
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Tina.doe@example.com',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                )),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                      leading: Icon(
                        controller.drawerItem[index]['icon'],
                        color: AppColors.black,
                      ),
                      title: Text(
                        controller.drawerItem[index]['label'],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      onTap: () {
                        Get.back();
                        if (controller.drawerItem[index]['label'] ==
                            "Reference") {
                          Get.to(() => ReferenceScreen());
                        }
                      },
                    ),
                padding: EdgeInsets.only(left: 10),
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: controller.drawerItem.length)
          ],
        ),
      ),
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
