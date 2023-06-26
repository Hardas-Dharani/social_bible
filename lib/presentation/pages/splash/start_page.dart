import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:social_bible/app/config/app_colors.dart';
import 'package:social_bible/app/extensions/color.dart';
import 'package:social_bible/app/util/common_txt.dart';

import '../../../app/util/custom_button.dart';
import '../../../app/util/gradient_button.dart';
import '../../../app/util/scaffold_widget.dart';
import '../../../app/util/util.dart';
import '../../../routes/app_routes.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScafoldedWidget(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: Get.width,
            height: Get.height * 0.2,
          ),
          SvgPicture.asset(
            Utils.getSvgFilePath("i-connect-icon"),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          CommonText(
            text: 'Welcome to',
            fontSize: 21,
            color: AppColors.white,
          ),
          CommonText(
            text: 'Social Bible Commentray',
            fontSize: 21,
            color: AppColors.white,
          ),
          SizedBox(
            height: Get.height * 0.04,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: Get.width,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomGradientButton(
                      onPressed: () {
                        Get.toNamed(Routes.signUpScreen);
                      },
                      child: CommonText(
                        text: 'SIGN UP FREE',
                        fontSize: 18,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    CustomButton(
                      onPressed: () {
                        Get.toNamed(Routes.signInScreen);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            Utils.getSvgFilePath("icon-google"),
                          ),
                          CommonText(
                            text: "Continue with Google",
                            fontSize: 18,
                            color: AppColors.black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    CustomButton(
                      onPressed: () {
                        Get.toNamed(Routes.signInScreen);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            Utils.getSvgFilePath("icons-facebook"),
                          ),
                          CommonText(
                            text: "Continue with Facebook",
                            fontSize: 18,
                            color: AppColors.black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    CustomButton(
                      onPressed: () {
                        Get.toNamed(Routes.signInScreen);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            Utils.getSvgFilePath(
                              "icon-apple",
                            ),
                            color: AppColors.black,
                          ),
                          CommonText(
                            text: "Continue with Apple",
                            fontSize: 18,
                            color: AppColors.black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonText(
                          text: "Already have account? ",
                          color: HexColor("585858"),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.signInScreen);
                          },
                          child: CommonText(
                            text: "Sign in",
                            color: AppColors.primary,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
