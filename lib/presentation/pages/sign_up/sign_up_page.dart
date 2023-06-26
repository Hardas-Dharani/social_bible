import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:simple_fontellico_progress_dialog/simple_fontico_loading.dart';

import '../../../app/config/app_colors.dart';
import '../../../app/util/common_txt.dart';
import '../../../app/util/gradient_button.dart';
import '../../../app/util/scaffold_widget.dart';
import '../../../app/util/util.dart';
import '../../../routes/app_routes.dart';
import 'controller/sign_up_controller.dart';

class SignUpScreen extends GetView<SignupController> {
  const SignUpScreen({super.key});

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
        child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Get.height * 0.09,
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
                        text: 'Social Bible Commentary',
                        fontSize: 21,
                        color: AppColors.white,
                      ),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 5),
                              child: TextFormField(
                                  controller: controller.emailTxt,
                                  readOnly: false,
                                  // validator: (value) {
                                  //   if (value!.isEmpty) {
                                  //     return 'Enter email';
                                  //   }
                                  //   return null;
                                  // },
                                  decoration: const InputDecoration(
                                    // floatingLabelAlignment:
                                    //     FloatingLabelAlignment.start,
                                    // floatingLabelBehavior:
                                    //     FloatingLabelBehavior.auto,
                                    // labelText: 'First Name',
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                    hintText: "First name ",
                                  )))),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 5),
                              child: TextFormField(
                                  controller: controller.emailTxt,
                                  readOnly: false,
                                  // validator: (value) {
                                  //   if (value!.isEmpty) {
                                  //     return 'Enter email';
                                  //   }
                                  //   return null;
                                  // },
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                      hintText: "Last name ")))),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 5),
                              child: TextFormField(
                                  controller: controller.emailTxt,
                                  readOnly: false,
                                  // validator: (value) {
                                  //   if (value!.isEmpty) {
                                  //     return 'Enter email';
                                  //   }
                                  //   return null;
                                  // },
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                      hintText: "Email ")))),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 5),
                              child: TextFormField(
                                  controller: controller.emailTxt,
                                  readOnly: false,
                                  // validator: (value) {
                                  //   if (value!.isEmpty) {
                                  //     return 'Enter email';
                                  //   }
                                  //   return null;
                                  // },
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                      hintText: "Date of Birth ")))),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 5),
                              child: TextFormField(
                                  controller: controller.emailTxt,
                                  readOnly: false,
                                  // validator: (value) {
                                  //   if (value!.isEmpty) {
                                  //     return 'Enter email';
                                  //   }
                                  //   return null;
                                  // },
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                      hintText: "Phone ")))),
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
                          text: 'Sign Up',
                          fontSize: 18,
                          color: AppColors.white,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.3,
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    ));
  }
}
