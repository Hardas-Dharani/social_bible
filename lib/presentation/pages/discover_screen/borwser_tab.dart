import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_bible/app/config/app_colors.dart';
import 'package:social_bible/presentation/pages/discover_screen/search_categories.dart';

import '../bottom_bar/controller/bottom_bar_controller.dart';
import '../chat/widgets/serach_text.dart';

class BrowserTab extends GetView<BottomBarController> {
  const BrowserTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // IconButton(
                  //     // padding: EdgeInsets.zero,
                  //     // alignment: Alignment.centerLeft,
                  //     onPressed: () {},
                  //     icon: Icon(
                  //       Icons.arrow_back,
                  //       color: AppColors.white,
                  //     )),
                  // if (controller.serachBool.value)
                  const SizedBox(
                    width: 20,
                  ),
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
                          textEditingController: controller.searchTxtField),
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
              const SearchCategories(),
              Column(
                children: <Widget>[
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story21.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story20.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story19.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story18.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story17.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story16.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story15.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story14.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story13.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story12.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story11.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story10.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story9.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/playstation.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story7.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story6.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story5.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story4.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story3.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story2.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/xbox.jpeg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story21.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story20.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story19.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story18.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story17.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story16.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story15.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story14.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story13.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2.0),
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story12.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story11.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3 - 2,
                          height: MediaQuery.of(context).size.width / 3 - 2,
                          child: Image.asset('assets/images/story10.jpg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 40.0)
            ],
          ),
        ),
      ),
    );
  }
}
