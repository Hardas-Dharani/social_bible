import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_fontellico_progress_dialog/simple_fontico_loading.dart';
import 'package:sizer/sizer.dart';
import 'package:social_bible/routes/app_routes.dart';

import '../../../app/config/app_colors.dart';
import '../../../app/util/common_txt.dart';
import '../../../app/util/gradient_button.dart';
import '../../../app/util/scaffold_widget.dart';
import '../../../app/util/util.dart';
import 'controller/sign_in_controller.dart';

class SigInScreen extends GetView<SigninController> {
  const SigInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SimpleFontelicoProgressDialog dialog = SimpleFontelicoProgressDialog(
      context: context,
      barrierDimisable: false,
    );
    return ScafoldedWidget(
        body: SafeArea(
      child: Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: AppColors.white,
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 3.h,
                      ),
                      Center(
                        child: SvgPicture.asset(
                          Utils.getSvgFilePath("i-connect-icon"),
                        ),
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
                        text: 'Soical Bible Commentary',
                        fontSize: 21,
                        color: AppColors.white,
                      ),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 4,
                child: Container(
                  alignment: Alignment.center,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Lottie.asset('assets/svg/sign_ani.json', width: 100),
                          CommonText(
                            text: "Let's connect with Soical Bible",
                            color: AppColors.black,
                            fontSize: 18,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0, right: 0, top: 5),
                                  child: TextFormField(
                                      controller: controller.emailTxt,
                                      readOnly: false,
                                      // validator: (value) {
                                      //   if (value!.isEmpty) {
                                      //     return 'Enter email';
                                      //   }
                                      //   return null;
                                      // },
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: AppColors.primary)),
                                          hintStyle: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300),
                                          hintText: "Email ")))),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          Obx(
                            () => Container(
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 5),
                                    child: TextFormField(
                                        controller: controller.passTxt,
                                        readOnly: false,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Enter Password';
                                          }
                                          return null;
                                        },
                                        obscureText:
                                            controller.passwordVisible.value,
                                        decoration: InputDecoration(
                                            suffixIcon: IconButton(
                                              icon: !controller
                                                      .passwordVisible.value
                                                  ? const Icon(Icons.visibility)
                                                  : const Icon(
                                                      Icons.visibility_off),
                                              onPressed: () {
                                                controller
                                                        .passwordVisible.value =
                                                    !controller
                                                        .passwordVisible.value;

                                                // Update the state i.e. toogle the state of passwordVisible variable
                                              },
                                            ),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: AppColors.primary)),
                                            hintStyle: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300),
                                            hintText: "Password ")))),
                          ),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          SizedBox(
                            height: Get.height * 0.05,
                          ),
                          CustomGradientButton(
                            onPressed: () {
                              Get.toNamed(Routes.bottomBar);
                            },
                            child: CommonText(
                              text: 'Sign in',
                              fontSize: 18,
                              color: AppColors.white,
                            ),
                          ),
                          SizedBox(
                            height: Get.height * 0.05,
                          ),
                        ]),
                  ),
                )),
          ],
        ),
      ),
    ));
  }
}
