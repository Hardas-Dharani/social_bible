import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:social_bible/app/util/common_txt.dart';

import '../../../app/config/app_colors.dart';

class BibleScreen extends GetView {
  const BibleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        body: SafeArea(
          bottom: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: Get.height * 0.08,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: Get.height * 0.043,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 25,
                          width: Get.width * 0.18,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20))),
                          child: const CommonText(
                            text: "John 1",
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Container(
                          height: 25,
                          width: Get.width * 0.1,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: const CommonText(
                            text: "CSV",
                          ),
                        ),
                        const Spacer(),
                        // IconButton(
                        //     padding: EdgeInsets.zero,
                        //     alignment: Alignment.centerLeft,
                        //     onPressed: () {},
                        //     icon: SvgImageAssetWidget(
                        //       imagePath: 'backSvg',
                        //       color: AppColors.white,
                        //     )),
                        IconButton(
                            // alignment: Alignment.centerRight,
                            // padding: EdgeInsets.zero,
                            onPressed: () {
                              // controller.serachBool.value = true;
                            },
                            icon: Icon(
                              FontAwesomeIcons.volumeHigh,
                              color: AppColors.white.withOpacity(0.5),
                            )),
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
                              FontAwesomeIcons.search,
                              color: AppColors.white.withOpacity(0.5),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                // height: Get.height / 1.85,
                child: Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                      // boxShadow: boxShadows,
                      color: AppColors.white),
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 25, bottom: 20),
                  child: const SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonText(
                            text: "The World Become Flesh",
                            color: Colors.red,
                            weight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          CommonText(
                              text:
                                  "1 In the beginning was the Word, and the Word was with God, and the Word was God. \n2 He was in the beginning with God. \n3 All things were made through him, and without him was not any thing made that was made. 4 In him was life,[a] and the life was the light of men. 5 The light shines in the darkness, and the darkness has not overcome it. \n6 There was a man sent from God, whose name was John. \n7 He came as a witness, to bear witness about the light, that all might believe through him. \n8 He was not the light, but came to bear witness about the light.\n9 The true light, which gives light to everyone, was coming into the world.\n10 He was in the world, and the world was made through him, yet the world did not know him. \n11 He came to his own,[b] and his own people[c] did not receive him. \n12 But to all who did receive him, who believed in his name, he gave the right to become children of God,\n13 who were born, not of blood nor of the will of the flesh nor of the will of man, but of God. \n14 And the Word became flesh and dwelt among us, and we have seen his glory, glory as of the only Son[d] from the Father, full of grace and truth. \n15 (John bore witness about him, and cried out, “This was he of whom I said, ‘He who comes after me ranks before me, because he was before me.’”) \n16 For from his fullness we have all received, grace upon grace.[e] \n17 For the law was given through Moses; grace and truth came through Jesus Christ. \n18 No one has ever seen God; the only God,[f] who is at the Father's side,[g] he has made him known.")
                        ]),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
