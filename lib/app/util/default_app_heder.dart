import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:social_bible/app/util/util.dart';

import '../config/app_colors.dart';
import 'common_txt.dart';

class DefaultAppHeader extends StatelessWidget {
  const DefaultAppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.11),
            SvgPicture.asset(Utils.getSvgFilePath('Bible-icon')),
            SizedBox(height: Get.height * 0.01),
            CommonText(
              text: 'Welcome to',
              fontSize: 26,
              color: AppColors.white,
              weight: FontWeight.w800,
            ),
            SizedBox(height: Get.height * 0.02),
            CommonText(
              text: 'Social Bible Commentary',
              fontSize: 26,
              color: AppColors.white,
              weight: FontWeight.w800,
            ),
            SizedBox(height: Get.height * 0.02), // const Spacer(),
          ],
        ),
      ),
    );
  }
}

class TextDetails extends StatelessWidget {
  const TextDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonText(
              text: 'Fast and secure',
              fontSize: 16,
              color: AppColors.white,
              weight: FontWeight.w400,
              textAlign: TextAlign.center,
            ),
            CommonText(
              text: ' Chatting/Dating ',
              fontSize: 16,
              color: AppColors.white,
              weight: FontWeight.w800,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        CommonText(
          text: 'with Location Based Experience',
          fontSize: 16,
          color: AppColors.white,
          weight: FontWeight.w400,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
