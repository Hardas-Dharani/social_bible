import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_bible/presentation/pages/application/controller/application_controller.dart';
import 'package:social_bible/presentation/tabs/add_tab/add_view.dart';
import 'package:social_bible/presentation/tabs/bible_tab/bible_view.dart';
import 'package:social_bible/presentation/tabs/discover_tab/discover_view.dart';
import 'package:social_bible/presentation/tabs/home_tab/home_view.dart';
import 'package:social_bible/presentation/tabs/inbox_tab/inbox_view.dart';

import '../../../app/util/custom_bot_navbar.dart';
import '../../../app/util/scaffold_widget.dart';
import '../../../app/util/scafolded_wi_new.dart';

class ApplicationView extends GetView<ApplicationsController> {
  const ApplicationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScafoldedWidget(
      //  bottomNavigationBar: const CustomBottomNavBar(),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => IndexedStack(
                index: controller.tabIndex.value,
                children: const [
                  HomeView(),
                  BibleView(),
                  DiscoverView(),
                  AddView(),
                  InboxView()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
