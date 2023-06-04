import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:social_bible/app/util/scafolded_wi_new.dart';

import '../../../../app/util/common_appbar.dart';

import '../../../../app/util/custom_bot_navbar.dart';

import '../../../../app/util/scaffold_widget.dart';

import 'controller/inbox_controller.dart';

class InboxView extends GetView<InboxController> {
  const InboxView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScafoldedWidget(
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
      ),
    );
  }
}
