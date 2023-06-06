import 'package:flutter/material.dart';

import '../../../../app/config/app_colors.dart';
import '../../../../app/util/common_txt.dart';

class ChatUserCard extends StatelessWidget {
  final Map<String, dynamic> usersData;
  const ChatUserCard({super.key, required this.usersData});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(usersData['image']),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(
                    text: usersData['name'],
                    color: AppColors.black,
                    // fontFamily: ptFontFamilies,
                    fontSize: 14,
                    weight: FontWeight.w700,
                  ),
                  CommonText(
                    text: usersData['name'],
                    color: AppColors.black,
                    // fontFamily: outFitFontFamilies,
                    fontSize: 10,
                    weight: FontWeight.w600,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
