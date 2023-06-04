import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:social_bible/app/config/app_colors.dart';
import 'package:social_bible/app/extensions/color.dart';
import 'package:social_bible/app/util/common_txt.dart';

import '../../../app/util/custom_button.dart';
import '../../../app/util/gradient_button.dart';
import '../../../app/util/scaffold_widget.dart';
import '../../../app/util/scafolded_wi_new.dart';
import '../../../app/util/util.dart';
import '../../../routes/app_routes.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScafoldedWidget2(
      body: Stack(
        children: [
          // CommonAppBr(
          //   label: '',
          //   onLeadingIconTap: () => Get.back(),
          //   showBackBtn: false,
          // ),
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      SizedBox(height: Get.height * 0.08),
                      Expanded(
                        flex: 1,
                        child: SvgPicture.asset(
                            Utils.getSvgFilePath('Bible-icon')),
                      ),
                      SizedBox(height: Get.height * 0.01),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CommonText(
                              text: 'Welcome to ',
                              fontSize: 26,
                              color: AppColors.white,
                              weight: FontWeight.bold,
                            ),
                            CommonText(
                              text: 'Bible Social Commentary',
                              fontSize: 26,
                              color: AppColors.white,
                              weight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Get.height * 0.01),
                      // const Expanded(child: TextDetails()),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                      gradient: Utils.getWhiteGradient(),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35)),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.white,
                          offset: const Offset(0, -2),
                        ),
                      ]),
                  child: Column(
                    children: [
                      SizedBox(height: Get.height * 0.15),
                      CustomGradientButton(
                        onPressed: () {
                          Get.toNamed(Routes.signUpScreen);
                        },
                        child: CommonText(
                          text: "SIGN UP FREE",
                          fontSize: 18,
                          color: AppColors.white,
                        ),
                      ),
                      SizedBox(height: Get.height * 0.04),
                      CustomButton(
                        onPressed: () async {
                          //  Get.toNamed(Routes.signInScreen);
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
                      SizedBox(height: Get.height * 0.02),
                      CustomButton(
                        onPressed: () async {
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
                      SizedBox(height: Get.height * 0.04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommonText(
                            text: "Already have an account? ",
                            fontSize: 18,
                            color: AppColors.black,
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.signInScreen);
                              },
                              child: CommonText(
                                text: "Sign In",
                                color: AppColors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Get.height * 0.07),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    //  ScafoldedWidget(
    //   body: Column(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     // mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       SizedBox(
    //         width: Get.width,
    //         height: Get.height * 0.2,
    //       ),
    //       SvgPicture.asset(
    //         Utils.getSvgFilePath("-icon"),
    //       ),
    //       SizedBox(
    //         height: Get.height * 0.02,
    //       ),
    //       CommonText(
    //         text: 'Connect',
    //         fontSize: 21,
    //         color: AppColors.white,
    //       ),
    //       CommonText(
    //         text: 'Wirelessly & Effortlessly',
    //         fontSize: 21,
    //         color: AppColors.white,
    //       ),
    //       SizedBox(
    //         height: Get.height * 0.04,
    //       ),
    //       CustomGradientButton(
    //         onPressed: () {
    //           Get.toNamed(Routes.signUpScreen);
    //         },
    //         child: CommonText(
    //           text: 'SIGN UP FREE',
    //           fontSize: 18,
    //           color: HexColor('262A38'),
    //         ),
    //       ),
    //       SizedBox(
    //         height: Get.height * 0.02,
    //       ),
    //       CustomButton(
    //         onPressed: () {
    //           Get.toNamed(Routes.signInScreen);
    //         },
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: [
    //             SvgPicture.asset(
    //               Utils.getSvgFilePath("icon-google"),
    //             ),
    //             CommonText(
    //               text: "Continue with Google",
    //               fontSize: 18,
    //               color: AppColors.white,
    //             ),
    //           ],
    //         ),
    //       ),
    //       SizedBox(
    //         height: Get.height * 0.02,
    //       ),
    //       CustomButton(
    //         onPressed: () {
    //           Get.toNamed(Routes.signInScreen);
    //         },
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: [
    //             SvgPicture.asset(
    //               Utils.getSvgFilePath("icons-facebook"),
    //             ),
    //             CommonText(
    //               text: "Continue with Facebook",
    //               fontSize: 18,
    //               color: AppColors.white,
    //             ),
    //           ],
    //         ),
    //       ),
    //       SizedBox(
    //         height: Get.height * 0.02,
    //       ),
    //       CustomButton(
    //         onPressed: () {
    //           Get.toNamed(Routes.signInScreen);
    //         },
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: [
    //             SvgPicture.asset(
    //               Utils.getSvgFilePath(
    //                 "icon-apple",
    //               ),
    //               color: AppColors.white,
    //             ),
    //             CommonText(
    //               text: "Continue with Apple",
    //               fontSize: 18,
    //               color: AppColors.white,
    //             ),
    //           ],
    //         ),
    //       ),
    //       SizedBox(
    //         height: Get.height * 0.03,
    //       ),
    //       GestureDetector(
    //         onTap: () {
    //           Get.toNamed(Routes.signInScreen);
    //         },
    //         child: CommonText(
    //           text: "Log in",
    //           color: AppColors.white,
    //           fontSize: 18,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
