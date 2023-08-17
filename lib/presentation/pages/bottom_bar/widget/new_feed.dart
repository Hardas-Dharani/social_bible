import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_bible/app/util/common_txt.dart';

import '../../../../app/util/custom_button.dart';

class CreateMemoryScreen extends StatefulWidget {
  const CreateMemoryScreen({Key? key}) : super(key: key);

  @override
  State<CreateMemoryScreen> createState() => _CreateMemoryScreenState();
}

class _CreateMemoryScreenState extends State<CreateMemoryScreen> {
  final List<FocusNode> _focusNodes = [FocusNode(), FocusNode()];

  final List<CreateMemoryModel> _createMemories = [
    CreateMemoryModel(
        icon: "ic_gallery.png", options: "Add Audio I Photo I Video"),
    CreateMemoryModel(icon: "ic_tag_friends.png", options: "Tag Friends"),
    CreateMemoryModel(icon: "ic_feeling.png", options: "Feeling"),
    CreateMemoryModel(icon: "ic_location.png", options: "Location"),
    CreateMemoryModel(icon: "ic_privacy.png", options: "Privacy"),
  ];
  final List<PrivacyListModel>? privacyList = [
    PrivacyListModel(
        name: "Public",
        subTitle: "Anyone on soul scribe",
        profileImage: "publicGrey.png"),
    PrivacyListModel(
        name: "Friends",
        subTitle: "Your friends on soul scribe",
        profileImage: "friendsIcon.png"),
    PrivacyListModel(
        name: "Only me",
        subTitle: "Save to your memory journal",
        profileImage: "onlyme.png"),
  ];
  bool? uploadPhoto = false;
  bool? tagFreinds = false;
  bool? feeling = false;
  bool? location = false;
  bool? privacy = false;
  @override
  void initState() {
    // ignore: avoid_function_literals_in_foreach_calls
    _focusNodes.forEach((node) {
      node.addListener(() {
        setState(() {});
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 32),
                        ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: CircleAvatar(
                              backgroundColor: Style.blueColor,
                            ),
                            title: CustomText(
                                text: "Jaylon Franci",
                                fontWeight: FontWeight.w700,
                                fontSize: 14)),
                        SizedBox(height: 23),
                        const CustomText(
                            text: "Memory Title", fontWeight: FontWeight.w700),
                        SizedBox(height: 6),
                        CustomTextField(hint: '', node: _focusNodes[0]),
                        SizedBox(height: 25),
                        const CustomText(
                            text: "Memory Description",
                            fontWeight: FontWeight.w700),
                        SizedBox(height: 6),
                        CustomTextField(
                            hint: '', node: _focusNodes[1], maxLines: 5),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Spacer(),
                            CustomText(
                              text: "0/1000",
                              fontWeight: FontWeight.w600,
                              color: Style.textHintGreyColor,
                            ),
                          ],
                        ),
                        SizedBox(height: 37),
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: _createMemories.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {},
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Divider(thickness: 1, height: 0),
                                    SizedBox(height: 21),
                                    Container(
                                      color: Colors.transparent,
                                      child: Row(
                                        children: [
                                          // ImageIcon(
                                          //   AssetImage(Style.getIconImage(
                                          //       _createMemories[index].icon!)),
                                          //   color: Style.blueColor,
                                          //   size: 24,
                                          // ),
                                          SizedBox(
                                            width: 9,
                                          ),
                                          CustomText(
                                            text:
                                                _createMemories[index].options,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            color: Style.blackColor,
                                          ),
                                          const Spacer(),
                                          privacy == true
                                              ? index == 4
                                                  ? Row(
                                                      children: [
                                                        // Image.asset(
                                                        //     Style.getIconImage(
                                                        //         "public.png"),
                                                        //     width: 16,
                                                        //     height: 16),
                                                        SizedBox(width: 10.09),
                                                        const CustomText(
                                                            text: "Public",
                                                            maxLines: 1,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: Style
                                                                .blackColor),
                                                      ],
                                                    )
                                                  : Container()
                                              : Container(),
                                          privacy == true
                                              ? SizedBox(width: 30)
                                              : Container(),
                                          // ImageIcon(
                                          //   AssetImage(Style.getIconImage(
                                          //       "ic_arrow_right@2x.png")),
                                          //   color: Style.blueColor,
                                          //   size: 14,
                                          // ),
                                        ],
                                      ),
                                    ),
                                    uploadPhoto == true
                                        ? index == 0
                                            ? SizedBox(height: 18)
                                            : Container()
                                        : Container(),
                                    uploadPhoto == true
                                        ? Row(
                                            children: [
                                              index == 0
                                                  ? SizedBox(
                                                      height: 101,
                                                      width: 105,
                                                      child: Stack(
                                                        clipBehavior: Clip.none,
                                                        children: [
                                                          // ClipRRect(
                                                          //   borderRadius:
                                                          //       BorderRadius
                                                          //           .circular(13),
                                                          //   child: Image.asset(
                                                          //     Style.getIconImage(
                                                          //         "2x/Rectangle 30002.png"),
                                                          //     width: 105,
                                                          //     height: 101,
                                                          //   ),
                                                          // ),
                                                          // Positioned(
                                                          //   top: 10,
                                                          //   right: 10,
                                                          //   child: Image.asset(
                                                          //     Style.getIconImage(
                                                          //         "ic_clear@2x.png"),
                                                          //     height: 22,
                                                          //     width: 22,
                                                          //   ),
                                                          // ),
                                                        ],
                                                      ),
                                                    )
                                                  : Container(),
                                              SizedBox(width: 6),
                                              index == 0
                                                  ? SizedBox(
                                                      height: 101,
                                                      width: 105,
                                                      child: Stack(
                                                        clipBehavior: Clip.none,
                                                        children: [
                                                          // ClipRRect(
                                                          //   borderRadius:
                                                          //       BorderRadius
                                                          //           .circular(13),
                                                          //   child: Image.asset(
                                                          //     Style.getIconImage(
                                                          //         "2x/Rectangle 2079.png"),
                                                          //     width: 105,
                                                          //     height: 101,
                                                          //   ),
                                                          // ),
                                                          // Positioned(
                                                          //   top: 10,
                                                          //   right: 10,
                                                          //   child: Image.asset(
                                                          //     Style.getIconImage(
                                                          //         "ic_clear@2x.png"),
                                                          //     height: 22,
                                                          //     width: 22,
                                                          //   ),
                                                          // ),
                                                        ],
                                                      ),
                                                    )
                                                  : Container(),
                                            ],
                                          )
                                        : Container(),
                                    tagFreinds == true
                                        ? index == 1
                                            ? SizedBox(height: 14)
                                            : Container()
                                        : Container(),
                                    tagFreinds == true
                                        ? index == 1
                                            ? Wrap(
                                                spacing: 10,
                                                runSpacing: 10,
                                                children: [
                                                  Container(
                                                    padding:
                                                        EdgeInsets.all(1.5),
                                                    width: 157.25,
                                                    height: 36,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18),
                                                      color: Style
                                                          .containerGreyColor2
                                                          .withOpacity(0.1),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        // CircleAvatar(
                                                        //   radius: 17,
                                                        //   backgroundImage: AssetImage(
                                                        //       Style.getIconImage(
                                                        //           "2x/Ellipse 2055.png")),
                                                        // ),
                                                        SizedBox(width: 10.09),
                                                        const CustomText(
                                                            text:
                                                                "Jaylon Curtis",
                                                            maxLines: 1,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: Style
                                                                .containerGreyColor2),
                                                        const SizedBox(
                                                            width: 10),
                                                        // Image.asset(
                                                        //     Style.getIconImage(
                                                        //         "ic_cancel@2x.png"),
                                                        //     height: 10,
                                                        //     width: 10),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.all(1.5),
                                                    width: 157.25,
                                                    height: 36,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18),
                                                      color: Style
                                                          .containerGreyColor2
                                                          .withOpacity(0.1),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        // CircleAvatar(
                                                        //   radius: 17,
                                                        //   backgroundImage: AssetImage(
                                                        //       Style.getIconImage(
                                                        //           "2x/Ellipse 2056.png")),
                                                        // ),
                                                        SizedBox(width: 10.09),
                                                        const CustomText(
                                                            text:
                                                                "Kaylynn Vet...",
                                                            maxLines: 1,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: Style
                                                                .containerGreyColor2),
                                                        const SizedBox(
                                                            width: 10),
                                                        // Image.asset(
                                                        //     Style.getIconImage(
                                                        //         "ic_cancel@2x.png"),
                                                        //     height: 10,
                                                        //     width: 10),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.all(1.5),
                                                    width: 157.25,
                                                    height: 36,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18),
                                                      color: Style
                                                          .containerGreyColor2
                                                          .withOpacity(0.1),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        // CircleAvatar(
                                                        //   radius: 17,
                                                        //   backgroundImage: AssetImage(
                                                        //       Style.getIconImage(
                                                        //           "2x/Ellipse 2078.png")),
                                                        // ),
                                                        SizedBox(width: 10.09),
                                                        const CustomText(
                                                            text: "Giana Geidt",
                                                            maxLines: 1,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: Style
                                                                .containerGreyColor2),
                                                        const SizedBox(
                                                            width: 10),
                                                        // Image.asset(
                                                        //     Style.getIconImage(
                                                        //         "ic_cancel@2x.png"),
                                                        //     height: 10,
                                                        //     width: 10),
                                                      ],
                                                    ),
                                                  ),
                                                  CustomButton(
                                                    height: 36,
                                                    width: 157,
                                                    child: CommonText(
                                                      text: "View All",
                                                    ),
                                                    onPressed: () {},
                                                  )
                                                ],
                                              )
                                            : Container()
                                        : Container(),
                                    feeling == true
                                        ? index == 2
                                            ? SizedBox(height: 16)
                                            : Container()
                                        : Container(),
                                    feeling == true
                                        ? index == 2
                                            ? Wrap(
                                                spacing: 10,
                                                runSpacing: 10,
                                                children: [
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 13,
                                                            vertical: 8),
                                                    width: 157.25,
                                                    height: 36,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18),
                                                      color: Style
                                                          .containerGreyColor2
                                                          .withOpacity(0.1),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        // CircleAvatar(
                                                        //   radius: 10,
                                                        //   backgroundImage: AssetImage(
                                                        //       Style.getIconImage(
                                                        //           "2x/happy 5.png")),
                                                        // ),
                                                        SizedBox(width: 10.09),
                                                        const CustomText(
                                                            text: "Happy",
                                                            maxLines: 1,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: Style
                                                                .containerGreyColor2),
                                                        const Spacer(),
                                                        // Image.asset(
                                                        //     Style.getIconImage(
                                                        //         "ic_cancel@2x.png"),
                                                        //     height: 10,
                                                        //     width: 10),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              )
                                            : Container()
                                        : Container(),
                                    location == true
                                        ? index == 3
                                            ? SizedBox(height: 16)
                                            : Container()
                                        : Container(),
                                    location == true
                                        ? index == 3
                                            ? ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 0,
                                                      vertical: 1),
                                                  width: 327,
                                                  height: 165,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    // color: Style.redColor,
                                                    border: Border.all(
                                                      color: Style
                                                          .borderGreyColor4,
                                                    ),
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        height: 105,
                                                        width: 324,
                                                        child: Stack(
                                                          clipBehavior:
                                                              Clip.none,
                                                          children: [
                                                            // Image.asset(
                                                            //   Style.getIconImage(
                                                            //       "mapImg.png"),
                                                            //   width: 324,
                                                            //   height: 105,
                                                            //   fit: BoxFit.cover,
                                                            // ),
                                                            // Positioned(
                                                            //   top: 10,
                                                            //   right: 10,
                                                            //   child: Image.asset(
                                                            //     Style.getIconImage(
                                                            //         "ic_clear@2x.png"),
                                                            //     height: 22,
                                                            //     width: 22,
                                                            //   ),
                                                            // ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 10),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 16),
                                                        child: CustomText(
                                                            text:
                                                                "4416 Shobe Lane, Pennsylvania \nUnited States",
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 13),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            : Container()
                                        : Container(),
                                    SizedBox(height: 21),
                                  ],
                                ),
                              );
                            }),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  flex: 0,
                  child: CustomButton(
                    child: CommonText(text: "Post"),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CreateMemoryModel {
  final String? icon;
  final String? options;
  CreateMemoryModel({this.icon, this.options});
}

class PrivacyListModel {
  final String? name;
  final String? subTitle;
  final String? profileImage;

  PrivacyListModel({this.name, this.subTitle, this.profileImage});
}

class Style {
  static getRegularFont(double fontSize, {Color color = Style.textWhiteColor}) {
    return TextStyle(
        fontSize: fontSize, color: color, fontFamily: "Manrope", height: 1);
  }

  static getMediumFont(double fontSize, {Color color = Style.textWhiteColor}) {
    return TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily: "Manrope",
        height: 1);
  }

  static getSemiBoldFont(double fontSize,
      {Color color = Style.textWhiteColor}) {
    return TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.w700,
        fontFamily: "Manrope",
        height: 1);
  }

  static getBoldFont(double fontSize, {Color color = Style.textWhiteColor}) {
    return TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.bold,
        fontFamily: "Manrope",
        height: 1);
  }

  static headingStyle() {
    return TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w800,
      color: Style.blackColor,
    );
  }

  static boxDecoration({DecorationImage? image}) {
    return BoxDecoration(
      color: Style.textWhiteColor,
      borderRadius: BorderRadius.circular(14),
      image: image,
      border:
          Border.all(color: Style.borderGreyColor.withOpacity(0.25), width: 1),
      boxShadow: [
        BoxShadow(
            offset: const Offset(8, 9),
            color: Style.blackColor.withOpacity(0.06),
            blurRadius: 22)
      ],
    );
  }

  // static boxDecoration2() {
  //   return BoxDecoration(
  //       color: Style.textWhiteColor,
  //       borderRadius: BorderRadius.circular(45.r),
  //       border: Border.all(color: Style.borderGreyColor2, width: 1.w),
  //       boxShadow: [
  //         BoxShadow(
  //             offset: const Offset(7, 10),
  //             color: Style.shadowGreyColor.withOpacity(0.1),
  //             blurRadius: 19.r)
  //       ]);
  // }

  static getCommonImage(String imageName, {ImageSize size = ImageSize.oneX}) {
    switch (size) {
      case ImageSize.oneX:
        return "assets/images/common/$imageName";
      case ImageSize.twoX:
        return "assets/images/common/2x/$imageName";
      case ImageSize.threeX:
        return "assets/images/common/3x/$imageName";
    }
  }

  static getTempImage(String imageName) {
    return "assets/images/temp/$imageName";
  }

  static const blueColor = Color(0xFF468FEA);
  static const blueColor2 = Color(0xFF406AFF);
  static var blueColorOpacity = const Color(0xFF468FEA).withOpacity(.1);
  static const redColor3 = Color(0xFFE42B2B);
  static const redColor2 = Color(0xFFE33C3C);
  static const redColor = Color(0xFFFF4141);
  static const greyColor = Color(0xFF454F63);
  static const textGreyColor = Color(0xFF798AA4);
  static const textGreyColor2 = Color(0xFF949BAB);
  static const containerGreyColor = Color(0xFFF7F7F9);
  static var seperatorGreyColor = const Color(0xFFB6BFCF).withOpacity(0.20);
  static const textHintGreyColor = Color(0xFF9399A6);
  static const borderGreyColor = Color(0xFFA7B9BF);
  static const containerGreyColor2 = Color(0xFF73858F);
  static const containerGreyColor3 = Color(0xFFF1F3F4);
  static const navIconGreyColor = Color(0xFFC9CCD3);
  static const borderGreyColor2 = Color(0xFFDEEAED);
  static const borderGreyColor3 = Color.fromRGBO(167, 185, 191, 0.25);
  static const borderGreyColor4 = Color.fromRGBO(174, 170, 174, 0.2);
  static const shadowGreyColor = Color(0xFF3F575F);
  static const bgColor = Color(0xFF33393E);
  static const darkbgColor = Color(0xFF191B1F);
  static const blackColor = Color(0xFF000000);
  static const linkBlueColor = Color(0xFF406AFF);
  static const textWhiteColor = Color(0xFFFFFFFF);
  static final textWhiteColorOpacity50 =
      const Color(0xFFFFFFFF).withOpacity(0.50);
  static final textWhiteColorOpacity80 =
      const Color(0xFFFFFFFF).withOpacity(0.80);
  static final bgWhiteColorOpacity5 = const Color(0xFFFFFFFF).withOpacity(0.5);
  static const bgGradientColor = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[Color(0xFF33393E), Color(0xFF191B1F)]);

  static OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(14),
    borderSide: const BorderSide(
      color: Color(0xFFF7F7F7),
    ),
  );
}

enum ImageSize { oneX, twoX, threeX }

bool status = false;

class CustomText extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final TextAlign? textAlign;
  final TextBaseline? textBaseLine;
  final TextOverflow? textOverFlow;
  final TextStyle? style;
  final bool? softWrapCheck;
  final TextDecoration? textDecoration;
  final int? maxLines;
  final double? height;
  final double? letterSpacing;

  const CustomText({
    super.key,
    this.text,
    this.fontWeight,
    this.fontStyle,
    this.style,
    this.color,
    this.height,
    this.fontSize,
    this.textAlign,
    this.textBaseLine,
    this.textOverFlow,
    this.softWrapCheck,
    this.textDecoration,
    this.maxLines,
    this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: textOverFlow,
      softWrap: softWrapCheck,
      textScaleFactor: 1.0,
      style: style ??
          TextStyle(
            letterSpacing: letterSpacing,
            decoration: textDecoration,
            color: color,
            fontSize: fontSize,
            textBaseline: textBaseLine,
            height: height ?? 1,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
          ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  String hint;
  TextInputType textInputType = TextInputType.none;
  TextInputAction textInputAction = TextInputAction.done;
  TextEditingController? controller; // = TextEditingController();
  final FormFieldValidator? validatorFtn;
  final Function? onEditComplete;
  final Function(String)? onFieldSubmit;
  final String Function(String?)? onChangeFtn;
  final int? maxLines;
  String value = "";
  double? width;
  FocusNode node;
  Color fontColor;
  final double? borderRadius;
  final Color? fillColor;
  final Widget? prefixIcon;
  final Widget? prefixIcon2;
  final Widget? suffixIcon;
  bool isPass = false;
  bool enabled;
  bool isCentered = false;
  bool readOnly = false;

  CustomTextField({
    Key? key,
    required this.hint,
    required this.node,
    this.prefixIcon,
    this.prefixIcon2,
    this.fontColor = Style.greyColor,
    this.suffixIcon,
    this.borderRadius,
    this.enabled = true,
    this.fillColor,
    this.readOnly = false,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.isPass = false,
    this.onEditComplete,
    this.maxLines,
    this.width,
    this.onFieldSubmit,
    this.controller,
    this.validatorFtn,
    this.onChangeFtn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldWidget(
      hint: hint,
      textInputType: textInputType,
      node: node,
      isPass: isPass,
      enabled: enabled,
      fontColor: fontColor,
      borderRadius: borderRadius,
      fillColor: fillColor,
      prefixIcon: prefixIcon,
      prefixIcon2: prefixIcon2,
      maxLines: maxLines ?? 1,
      suffixIcon: suffixIcon,
      textInputAction: textInputAction,
      onEditComplete: onEditComplete,
      controller: controller,
      validatorFtn: validatorFtn,
      onFieldSubmit: onFieldSubmit,
      width: width,
    );
  }
}

class CustomTextFieldWidget extends StatefulWidget {
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final bool? enabled;
  final FocusNode? node;
  final String? hint;
  final int? maxLines;
  final double? width;
  final double? borderRadius;
  final Color? fillColor;
  final Color fontColor;
  final bool? isPass;
  final Widget? prefixIcon;
  final Widget? prefixIcon2;
  final Widget? suffixIcon;
  final String? initialValue;
  CustomTextFormFieldManager? manager;
  String value = "";
  final FormFieldValidator? validatorFtn;
  final Function? onEditComplete;
  final Function(String)? onFieldSubmit;
  final String? errorText;
  final String Function(String?)? onChangeFtn;

  CustomTextFieldWidget({
    Key? key,
    this.enabled,
    this.initialValue,
    this.validatorFtn,
    this.onEditComplete,
    this.onChangeFtn,
    this.onFieldSubmit,
    this.fillColor,
    this.fontColor = Style.greyColor,
    this.borderRadius,
    this.errorText,
    this.prefixIcon,
    this.prefixIcon2,
    this.suffixIcon,
    this.isPass = false,
    this.width = double.infinity,
    this.maxLines,
    this.textInputAction = TextInputAction.done,
    this.node,
    this.controller,
    required this.hint,
    required this.textInputType,
  }) : super(key: key) {
    controller?.addListener(onTextEdit);
    node!.addListener(() {
      manager!.setFocused(node!.hasFocus);
    });
  }

  void onTextEdit() {
    value = controller?.text ?? "";
    value == "" ? manager!.setEmpty() : manager!.setFilled();
  }

  @override
  CustomTextFieldWidgetState createState() => CustomTextFieldWidgetState();
}

class CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(textScaleFactor: 1.0),
      child: SizedBox(
        width: Get.width,
        child: Theme(
          data: Theme.of(context).copyWith(
            primaryColor: Colors.white,
          ),
          child: TextFormField(
            cursorColor: Style.blackColor,
            enabled: widget.enabled ?? true,
            scrollPadding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            initialValue: widget.initialValue,
            controller: widget.controller,
            autofocus: false,
            // obscureText: widget.manager!.obscure,
            textInputAction: widget.textInputAction,
            keyboardType: widget.textInputType,
            maxLines: widget.maxLines,
            autocorrect: false,
            focusNode: widget.node,
            style: TextStyle(
                color: widget.fontColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontFamily: "Manrope"),
            decoration: InputDecoration(
              errorText: widget.errorText,
              prefixIcon: widget.prefixIcon == null
                  ? widget.prefixIcon2
                  : Padding(
                      padding: EdgeInsets.all(18),
                      child: SizedBox(
                          height: 16, width: 20, child: widget.prefixIcon),
                    ),
              //labelText: widget.hint,
              // labelStyle:
              //     Style.getRegularFont(14, color: Style.textWhiteColorOpacity50),
              // suffixIcon: !widget.isPass!
              //     ? widget.suffixIcon
              //     : GestureDetector(
              //         behavior: HitTestBehavior.opaque,
              //         onTap: () {

              //         },
              //         child: Padding(
              //           padding: EdgeInsets.all(18),
              //           child: SizedBox(
              //             height: 24,
              //             width: 24,
              //             child: Image.asset(
              //               Style.getIconImage( "ic_password_visible@2x.png"),
              //             ),
              //           ),
              //         )),
              contentPadding: const EdgeInsets.all(20),
              filled: true,
              hintText: widget.hint,
              hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Style.containerGreyColor2),
              focusColor: Style.blueColor,
              fillColor:
                  widget.fillColor ?? const Color(0xFFAAAFBB).withOpacity(0.1),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 9),
                borderSide: BorderSide(
                  width: 0.5,
                  color: Style.bgWhiteColorOpacity5,
                  style: BorderStyle.none,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 9),
                borderSide: BorderSide(color: Style.blueColor, width: 1),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 9),
                borderSide: const BorderSide(
                  color: Color(0xFFF7F7F7),
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 9),
                borderSide: const BorderSide(
                  color: Color(0xFFF7F7F7),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 9),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
            ),
            validator: widget.validatorFtn,
            onChanged: widget.onChangeFtn,
          ),
        ),
      ),
    );
  }
}

class CustomTextFormFieldManager extends ChangeNotifier {
  bool focused = false;
  bool empty = true;
  bool obscure = false;

  CustomTextFormFieldManager(this.obscure);

  setEmpty() {
    empty = true;
    notifyListeners();
  }

  setFilled() {
    empty = false;
    notifyListeners();
  }

  setFocused(focus) {
    focused = focus;
    notifyListeners();
  }

  setObscure(obs) {
    obscure = obs;
    notifyListeners();
  }
}
