import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:simple_fontellico_progress_dialog/simple_fontico_loading.dart';
import 'package:sizer/sizer.dart';
import 'package:social_bible/app/util/scafolded_wi_new.dart';

import '../../../app/config/app_colors.dart';
import '../../../app/extensions/color.dart';
import '../../../app/services/local_storage.dart';
import '../../../app/util/common_txt.dart';
import '../../../app/util/cust_textfield.dart';
import '../../../app/util/default_app_heder.dart';
import '../../../app/util/eveleted_button.dart';
import '../../../app/util/gradient_button.dart';
import '../../../app/util/loader.dart';
import '../../../app/util/scaffold_widget.dart';
import '../../../app/util/util.dart';
import '../../../routes/app_routes.dart';
import 'controller/sign_in_controller.dart';

class SigInScreen extends GetView<SigninController> {
  const SigInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SimpleFontelicoProgressDialog dialog = SimpleFontelicoProgressDialog(
      context: context,
      barrierDimisable: false,
    );
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
              const Expanded(flex: 2, child: DefaultAppHeader()),
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
                  child: Form(
                    key: controller.formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: Get.height * 0.02),
                          // Lottie.asset(
                          //   animate: true,
                          //   'assets/lottie/person_lottie.json',
                          //   frameRate: FrameRate.composition,
                          //   height: Get.height * 0.15,
                          //   fit: BoxFit.fill,
                          //   alignment: Alignment.center,
                          //   addRepaintBoundary: false,
                          // ),
                          // SizedBox(height: Get.height * 0.02),
                          CommonText(
                            text: 'Let\'s connect with KattyChat',
                            fontSize: 16,
                            color: AppColors.white,
                            weight: FontWeight.w400,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: Get.height * 0.03),
                          CustomTextField(
                            textEditingController: controller.emailTxt,
                            labelText: 'Email',
                            // validator: (p0) {
                            //   // if (p0!.isEmpty) {
                            //   //   return "Please Enter Email";
                            //   // } else if (!controller.isEmailValid(p0)) {
                            //   //   return "Invalid Email";
                            //   // } else {
                            //   //   return null;
                            //   // }
                            // },
                          ),
                          SizedBox(height: Get.height * 0.02),
                          Obx(() => CustomTextField(
                                // validator: (p0) {
                                //   if (p0!.isEmpty) {
                                //     return "Please Enter Password";
                                //   } else {
                                //     return null;
                                //   }
                                // },
                                textEditingController: controller.passTxt,
                                labelText: 'Password',
                                obscureText: controller.passwordVisible.value,
                                icon: !controller.passwordVisible.value
                                    ? Icon(Icons.visibility,
                                        color: AppColors.black)
                                    : Icon(Icons.visibility_off,
                                        color: AppColors.black),
                                onTap: () {
                                  controller.passwordVisible.value =
                                      !controller.passwordVisible.value;
                                },
                              )),
                          SizedBox(height: Get.height * 0.03),
                          CustomGradientButton(
                            onPressed: () {
                              if (controller.formKey.currentState!.validate()) {
                                //  if (controller.verifySameUser()) {
                                Get.offAllNamed(Routes.applicationScreen);
                                //  } else {
                                //   showDialog(
                                //     context: context,
                                //     builder: (BuildContext context) {
                                //       return AlertDialog(
                                //         title: Text('Error'),
                                //         content:
                                //             Text('Wrong email or password.'),
                                //         actions: [
                                //           TextButton(
                                //             onPressed: () {
                                //               Navigator.pop(context);
                                //             },
                                //             child: Text('OK'),
                                //           ),
                                //         ],
                                //       );
                                //     },
                                //   );
                                // }
                              }
                            },
                            child: CommonText(
                              text: 'Login',
                              fontSize: 16,
                              color: AppColors.white,
                              weight: FontWeight.w400,
                              textAlign: TextAlign.center,
                            ),
                          ),

                          SizedBox(height: Get.height * 0.02),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    // ScafoldedWidget(
    //     body: SafeArea(
    //   child: Form(
    //     key: controller.formKey,
    //     child: Column(
    //       children: [
    //         Expanded(
    //             child: Padding(
    //           padding: const EdgeInsets.symmetric(horizontal: 35),
    //           child: SingleChildScrollView(
    //               // physics: const NeverScrollableScrollPhysics(),
    //               child: Column(
    //             // crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Align(
    //                 alignment: Alignment.topLeft,
    //                 child: GestureDetector(
    //                   onTap: () {
    //                     Get.back();
    //                   },
    //                   child: Icon(
    //                     Icons.arrow_back,
    //                     color: AppColors.white,
    //                   ),
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 15.h,
    //               ),
    //               Center(
    //                 child: SvgPicture.asset(
    //                   Utils.getSvgFilePath("i-connect-icon"),
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: Get.height * 0.02,
    //               ),
    //               CommonText(
    //                 text: 'Connect',
    //                 fontSize: 21,
    //                 color: AppColors.white,
    //               ),
    //               CommonText(
    //                 text: 'Wirelessly & Effortlessly',
    //                 fontSize: 21,
    //                 color: AppColors.white,
    //               ),
    //               SizedBox(
    //                 height: Get.height * 0.04,
    //               ),
    //               Container(
    //                   decoration: BoxDecoration(
    //                     color: AppColors.white,
    //                     borderRadius: BorderRadius.circular(10.0),
    //                   ),
    //                   child: Padding(
    //                       padding: const EdgeInsets.only(
    //                           left: 15, right: 15, top: 5),
    //                       child: TextFormField(
    //                           controller: controller.emailTxt,
    //                           readOnly: false,
    //                           // validator: (value) {
    //                           //   if (value!.isEmpty) {
    //                           //     return 'Enter email';
    //                           //   }
    //                           //   return null;
    //                           // },
    //                           decoration: const InputDecoration(
    //                               border: InputBorder.none,
    //                               hintStyle: TextStyle(
    //                                   fontSize: 14,
    //                                   fontWeight: FontWeight.w300),
    //                               hintText: "Email ")))),
    //               SizedBox(
    //                 height: Get.height * 0.02,
    //               ),
    //               Obx(
    //                 () => Container(
    //                     decoration: BoxDecoration(
    //                       color: AppColors.white,
    //                       borderRadius: BorderRadius.circular(10.0),
    //                     ),
    //                     child: Padding(
    //                         padding: const EdgeInsets.only(
    //                             left: 15, right: 15, top: 5),
    //                         child: TextFormField(
    //                             controller: controller.passTxt,
    //                             readOnly: false,
    //                             validator: (value) {
    //                               if (value!.isEmpty) {
    //                                 return 'Enter Password';
    //                               }
    //                               return null;
    //                             },
    //                             obscureText: controller.passwordVisible.value,
    //                             decoration: InputDecoration(
    //                                 suffixIcon: IconButton(
    //                                   icon: !controller.passwordVisible.value
    //                                       ? const Icon(Icons.visibility)
    //                                       : const Icon(Icons.visibility_off),
    //                                   onPressed: () {
    //                                     controller.passwordVisible.value =
    //                                         !controller.passwordVisible.value;

    //                                     // Update the state i.e. toogle the state of passwordVisible variable
    //                                   },
    //                                 ),
    //                                 border: InputBorder.none,
    //                                 hintStyle: const TextStyle(
    //                                     fontSize: 14,
    //                                     fontWeight: FontWeight.w300),
    //                                 hintText: "Password ")))),
    //               ),
    //               SizedBox(
    //                 height: Get.height * 0.02,
    //               ),
    //               SizedBox(
    //                 height: Get.height * 0.05,
    //               ),
    //               CustomGradientButton(
    //                 onPressed: () {
    //                   Get.toNamed(Routes.applicationScreen);
    //                 },
    //                 child: CommonText(
    //                   text: 'Login',
    //                   fontSize: 18,
    //                   color: HexColor('262A38'),
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: Get.height * 0.05,
    //               ),
    //             ],
    //           )),
    //         ))
    //       ],
    //     ),
    //   ),
    // ));
  }
}
