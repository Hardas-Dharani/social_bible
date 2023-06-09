import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/config/app_colors.dart';
import '../../../app/util/common_txt.dart';
import 'controller/chat_controller.dart';
import 'widgets/chat_user_card.dart';
import 'widgets/serach_text.dart';

class ChatScreen extends GetView<ChatController> {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.serachBool.value = false,
      child: Scaffold(
          backgroundColor: AppColors.primary,
          body: SafeArea(
            bottom: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: Get.height * 0.2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(
                      //   height: Get.height * 0.043,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          // if (controller.serachBool.value)
                          AnimatedContainer(
                            width: Get.width - 100,
                            duration: const Duration(milliseconds: 300),
                            child: SizedBox(
                              width: Get.width - 150,
                              height: 40,
                              child: SearchTextFormFieldWithOutBorder(
                                  textAlign: TextAlign.center,
                                  paddingIcon: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 3),
                                  hintTxt: "Search",
                                  contentPadding: 10,
                                  textEditingController:
                                      controller.searchTxtField),
                            ),
                          ),
                          // if (!controller.serachBool.value)
                          IconButton(
                              // alignment: Alignment.centerRight,
                              // padding: EdgeInsets.zero,
                              onPressed: () {
                                // controller.serachBool.value = true;
                              },
                              icon: Icon(
                                Icons.menu,
                                color: AppColors.white,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SizedBox(
                          height: Get.height * 0.12,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: NetworkImage(controller
                                            .activeUserList[index]['image']),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      CommonText(
                                        text: controller.activeUserList[index]
                                            ['name'],
                                        color: AppColors.white,
                                        // fontFamily: outFitFontFamilies,
                                        fontSize: 12,
                                        weight: FontWeight.w300,
                                      )
                                    ],
                                  ),
                              separatorBuilder: (context, index) => SizedBox(
                                    width: Get.width * 0.06,
                                  ),
                              itemCount: controller.activeUserList.length),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Expanded(
                  // height: Get.height / 1.85,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25)),
                        // boxShadow: boxShadows,
                        color: AppColors.white),
                    padding: const EdgeInsets.only(
                        left: 25, right: 25, top: 25, bottom: 20),
                    child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => GestureDetector(
                              onTap: () {},
                              child: ChatUserCard(
                                usersData: controller.activeUserList[index],
                              ),
                            ),
                        separatorBuilder: (context, index) => Column(
                              children: [
                                SizedBox(
                                  height: Get.width * 0.02,
                                ),
                                Divider(
                                  thickness: 1,
                                  color: AppColors.primary,
                                ),
                                SizedBox(
                                  height: Get.width * 0.03,
                                ),
                              ],
                            ),
                        itemCount: controller.activeUserList.length),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
