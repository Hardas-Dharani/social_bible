import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:social_bible/app/util/common_txt.dart';

import '../../../app/config/app_colors.dart';

class ReferenceScreen extends StatelessWidget {
  const ReferenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.check),
      ),
      body: DefaultTabController(
        length: 3,
        child: Container(
            color: AppColors.white,
            child: Column(
              children: [
                Container(
                  height: Get.height * 0.1,
                  color: AppColors.primary,
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // const SizedBox(
                      //   width: 20,
                      // ),
                      IconButton(
                          // alignment: Alignment.centerRight,
                          // padding: EdgeInsets.zero,
                          onPressed: () {
                            // controller.serachBool.value = true;
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: AppColors.white,
                          )),
                      CommonText(
                        text: "References",
                        color: AppColors.white,
                        weight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      const Spacer(),

                      IconButton(
                          // alignment: Alignment.centerRight,
                          // padding: EdgeInsets.zero,
                          onPressed: () {
                            // controller.serachBool.value = true;
                          },
                          icon: Icon(
                            FontAwesomeIcons.language,
                            color: AppColors.white.withOpacity(0.5),
                          )),
                      IconButton(
                          // alignment: Alignment.centerRight,
                          // padding: EdgeInsets.zero,
                          onPressed: () {
                            // controller.serachBool.value = true;
                          },
                          icon: Icon(
                            Icons.timer_off_outlined,
                            color: AppColors.white.withOpacity(0.5),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const tabheaderReference(),
                const tabbodyReference(),
              ],
            )),
      ),
    );
  }
}

class tabbodyReference extends StatelessWidget {
  const tabbodyReference({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          // first tab bar view widget
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: AppColors.black.withOpacity(0.8), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  FontAwesomeIcons.plus,
                  color: AppColors.black.withOpacity(0.8),
                  size: 35,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                'Profile',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.black.withOpacity(0.9),
                    fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90.0),
                child: Text(
                  "When you share photos and vedios, they'll appear on your profile.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.black.withOpacity(0.4),
                      fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Share your first photo or video',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 12, 97, 207),
                    fontSize: 16),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: AppColors.black.withOpacity(0.8), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  FontAwesomeIcons.userTag,
                  color: AppColors.black.withOpacity(0.8),
                  size: 35,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                'Profile',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.black.withOpacity(0.9),
                    fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Text(
                  "When somone montion you in his photos or vedios, they'll appear on your profile.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.black.withOpacity(0.4),
                      fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: AppColors.black.withOpacity(0.8), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  FontAwesomeIcons.userTag,
                  color: AppColors.black.withOpacity(0.8),
                  size: 35,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                'Profile',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.black.withOpacity(0.9),
                    fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Text(
                  "When somone montion you in his photos or vedios, they'll appear on your profile.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.black.withOpacity(0.4),
                      fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class tabheaderReference extends StatelessWidget {
  const tabheaderReference({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBar(indicatorColor: Colors.transparent, tabs: [
      Tab(
        icon: CommonText(
          text: "BOOKS",
          color: Colors.red,
        ),
      ),
      Tab(
        icon: CommonText(
          text: "CHAPTERS",
          color: Colors.red,
        ),
      ),
      Tab(
        icon: CommonText(
          text: "VERSES",
          color: Colors.red,
        ),
      ),
    ]);
  }
}
