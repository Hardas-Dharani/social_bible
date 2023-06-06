// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../../app/config/app_colors.dart';
// import '../../../../app/util/svg_image.dart';
// import '../../../../app/util/util.dart';
// import '../controller/chat_controller.dart';

// class ChatMessageScreen extends GetView<ChatController> {
//   const ChatMessageScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: AppColors.white,
//         body: Column(
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: Get.height * 0.05,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                         padding: EdgeInsets.zero,
//                         alignment: Alignment.centerLeft,
//                         onPressed: () => Get.back(),
//                         icon: const SvgImageAssetWidget(imagePath: 'backSvg')),
//                     IconButton(
//                         padding: EdgeInsets.zero,
//                         alignment: Alignment.centerRight,
//                         onPressed: () {},
//                         icon: ImageIcon(
//                           AssetImage(Utils.getImageIconPath('copyIcon')),
//                           color: AppColors.primary,
//                           size: 30,
//                         )),
//                   ],
//                 ),
//                 SizedBox(
//                   height: Get.height * 0.02,
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     CircleAvatar(
//                       radius: 35,
//                       backgroundImage:
//                           NetworkImage(controller.activeUserList[2]['image']),
//                     ),
//                     const SizedBox(
//                       width: 20,
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const SizedBox(
//                           height: 03,
//                         ),
//                         CommonText(
//                           text: controller.activeUserList[3]['name'],
//                           color: AppColors.colorMineShaft,
//                           fontFamily: ptFontFamilies,
//                           fontSize: 20,
//                           weight: FontWeight.w700,
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         CommonText(
//                           text: controller.activeUserList[3]['name'],
//                           color: AppColors.colorTxtTundora,
//                           fontFamily: outFitFontFamilies,
//                           fontSize: 16,
//                           weight: FontWeight.w300,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             Expanded(
//               child: Container(
//                 decoration: BoxDecoration(
//                     borderRadius: const BorderRadius.only(
//                         topLeft: Radius.circular(50),
//                         topRight: Radius.circular(50)),
//                     boxShadow: boxShadows,
//                     color: AppColors.colorWhite),
//                 child: Column(
//                   children: [
//                     Expanded(
//                       // height: Get.height - 380,
//                       // padding: const EdgeInsets.only(top: 50, left: 40, right: 40),
//                       child: Column(
//                         children: [
//                           Expanded(
//                             child: ListView.builder(
//                                 shrinkWrap: true,
//                                 padding: const EdgeInsets.only(
//                                     top: 36, left: 25, right: 25),
//                                 itemCount: controller.messagesD.length,
//                                 itemBuilder: (context, index) => controller
//                                             .messagesD[index]['from'] ==
//                                         'sender'
//                                     ? sender(
//                                         controller.messagesD[index]['message'],
//                                         controller.messagesD[index]['time'])
//                                     : receiver(
//                                         controller.messagesD[index]['message'],
//                                         controller.messagesD[index]['time'])),
//                           ),
//                           // Container(
//                           //   height: 50,
//                           //   color: AppColors.primary,
//                           //   width: Get.width - 100,
//                           // )
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           bottom: 30, top: 10, left: 20, right: 20),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             height: 52,
//                             decoration: BoxDecoration(boxShadow: boxShadows),
//                             width: Get.width - 110,
//                             child: TextField(
//                               maxLines: 5,
//                               minLines: 1,
//                               decoration: InputDecoration(
//                                 fillColor: AppColors.colorWhite,
//                                 contentPadding: const EdgeInsets.symmetric(
//                                     horizontal: 25, vertical: 0),
//                                 filled: true,
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                   borderSide: const BorderSide(
//                                     width: 0,
//                                     style: BorderStyle.none,
//                                   ),
//                                 ),
//                                 hintText: 'Type your message...',
//                                 hintStyle: TextStyle(color: Colors.grey[500]),
//                                 // suffixIcon: Padding(
//                                 //   padding: const EdgeInsets.all(8.0),
//                                 //   child: RawMaterialButton(
//                                 //     constraints: const BoxConstraints(minWidth: 0),
//                                 //     onPressed: () {},
//                                 //     elevation: 2.0,
//                                 //     fillColor: const Color(0xff5b61b9),
//                                 //     padding: const EdgeInsets.all(10.0),
//                                 //     shape: const CircleBorder(),
//                                 //     child: const Icon(Icons.send,
//                                 //         size: 22.0, color: Colors.white),
//                                 //   ),
//                                 // ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(right: 7),
//                             child: RawMaterialButton(
//                               constraints: const BoxConstraints(minWidth: 0),
//                               onPressed: () {},
//                               elevation: 0.0,
//                               fillColor: AppColors.colorPrimaryCaribbeanGreen,
//                               padding: const EdgeInsets.only(
//                                   left: 10, top: 10, bottom: 10, right: 10),
//                               shape: const CircleBorder(),
//                               child: ImageIcon(
//                                 AssetImage(
//                                     Utils.getImageIconPath('senderIcon')),
//                                 color: AppColors.colorWhite,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ));
//   }

//   Widget receiver(String message, String time) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 25.0),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Container(
//                 constraints: const BoxConstraints(minWidth: 100, maxWidth: 200),
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                 decoration: BoxDecoration(
//                     color: AppColors.colorCornflowerBlue.withOpacity(0.07),
//                     borderRadius: const BorderRadius.only(
//                         topLeft: Radius.circular(25),
//                         topRight: Radius.circular(25),
//                         bottomLeft: Radius.circular(0),
//                         bottomRight: Radius.circular(25))),
//                 child: CommonText(
//                   text: message,
//                   color: AppColors.colorMineShaft,
//                   lineHeight: 1.5,
//                   fontFamily: outFitFontFamilies,
//                   weight: FontWeight.w300,
//                   fontSize: 14,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget sender(String message, String time) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 25.0),
//       child: Row(
//         // mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Container(
//             constraints: const BoxConstraints(minWidth: 100, maxWidth: 280),
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//             decoration: BoxDecoration(
//                 color: AppColors.colorCornflowerBlue.withOpacity(0.27),
//                 borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(25),
//                     topRight: Radius.circular(25),
//                     bottomLeft: Radius.circular(25),
//                     bottomRight: Radius.circular(0))),
//             child: CommonText(
//               text: message,
//               color: AppColors.colorMineShaft,
//               lineHeight: 1.5,
//               fontFamily: outFitFontFamilies,
//               weight: FontWeight.w300,
//               fontSize: 14,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
