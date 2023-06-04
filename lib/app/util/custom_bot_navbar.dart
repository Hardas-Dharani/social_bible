import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../presentation/pages/application/controller/application_controller.dart';
import '../config/app_colors.dart';
import '../extensions/color.dart';
import '../types/tab_type.dart';

class CustomBottomNavBar extends GetView<ApplicationsController> {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        backgroundColor: HexColor("000711"),
        items: [
          TabType.home.bottomNavigationBarItem,
          TabType.bible.bottomNavigationBarItem,
          TabType.discover.bottomNavigationBarItem,
          TabType.add.bottomNavigationBarItem,
          TabType.inbox.bottomNavigationBarItem,
        ],
        currentIndex: controller.selectedNavIndex.value.index,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          controller.changeTabIndex(index);
          // controller.onBottomBarItemTap(index);
          controller.selectedNavIndex.value = TabType.values[index];
          // switch (index) {
          //   case 0:
          //     const ContactListView();
          //     break;
          //   case 1:
          // const MyGroupsView();
          //     break;
          //   case 2:
          //     const SearchView();
          //     break;
          //   case 3:
          //     const PremiumView();
          //     break;
          //   default:
          // }
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: AppColors.white,
        selectedItemColor: AppColors.darkOrange,
      ),
    );
  }
}
