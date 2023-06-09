// ignore_for_file: file_names

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:social_bible/app/util/common_txt.dart';

import '../../../app/config/app_colors.dart';
import '../../../data/demo.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Container(
            color: AppColors.white,
            child: Stack(
              children: [
                Container(
                  height: 15.h,
                  color: AppColors.primary,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        IconButton(
                          onPressed: () {
                            // Get.back();
                          },
                          icon: Icon(
                            Icons.menu,
                            color: AppColors.white,
                          ),
                        ),
                      ]),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    const ProfileHeader(),
                    const SizedBox(
                      height: 20,
                    ),
                    const tabheader(),
                    const tabbody(),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 75,
            width: 75,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(profile), fit: BoxFit.cover)),
          ),
          Text(
            'John',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.black,
                fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          ExpandableText(
            'Bouziani.Offi',
            expandText: 'more',
            style: TextStyle(
                color: AppColors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14),
            collapseText: 'less',
            expandOnTextTap: true,
            collapseOnTextTap: true,
            maxLines: 2,
            linkColor: AppColors.white.withOpacity(0.5),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '0',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Posts',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                          fontSize: 14),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '131',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                          fontSize: 14),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '39',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Following',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                          fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 38,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(3)),
                        // side: BorderSide(
                        //   width: 1,
                        //   color: AppColors.black.withOpacity(0.3),
                        // ),
                        ),
                    child: Text('Edit profile', //isFollowed
                        style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 38,
                width: 120,
                child: TextButton(
                  onPressed: () {},
                  // style: OutlinedButton.styleFrom(
                  //   shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(3)),
                  //   side: BorderSide(
                  //     width: 1,
                  //     color: AppColors.black.withOpacity(0.3),
                  //   ),
                  // ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.share,
                        color: AppColors.black,
                        size: 18,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const CommonText(text: "Share")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class tabbody extends StatelessWidget {
  const tabbody({
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

class tabheader extends StatelessWidget {
  const tabheader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(indicatorColor: AppColors.black, tabs: [
      Tab(
          icon: Icon(
            FontAwesomeIcons.image,
            color: AppColors.black,
          ),
          text: "Gallery"),
      Tab(
        icon: Icon(
          Icons.camera_alt_outlined,
          color: AppColors.black,
        ),
        text: "Photos",
      ),
      Tab(
        icon: Icon(
          Icons.movie_creation_outlined,
          color: AppColors.black,
        ),
        text: "Reel",
      ),
    ]);
  }
}
