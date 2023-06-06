import 'package:flutter/material.dart';
import 'package:social_bible/app/extensions/color.dart';

import '../../../../app/config/app_colors.dart';

class SearchTextFormFieldWithOutBorder extends StatelessWidget {
  final int? length;
  final TextAlign? textAlign;
  final String? label;
  final String? hintTxt;
  final Color? borderColor;
  final EdgeInsetsGeometry paddingIcon;
  final double contentPadding;
  final Function()? onTap;
  final TextEditingController textEditingController;
  const SearchTextFormFieldWithOutBorder({
    super.key,
    this.borderColor,
    this.label,
    this.length,
    this.textAlign,
    required this.textEditingController,
    this.hintTxt,
    this.onTap,
    this.contentPadding = 15,
    this.paddingIcon = const EdgeInsets.all(15),
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HexColor("C2C2C2"),
        borderRadius: BorderRadius.circular(45.0),
      ),
      // border: Border.all(color: AppColors.grey)),
      child: TextFormField(
          onTap: onTap,
          controller: textEditingController,
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            fillColor: AppColors.primary,
            // labelText: label ?? '',
            hintText: hintTxt,

            hintStyle: TextStyle(color: AppColors.white),
            contentPadding: EdgeInsets.all(contentPadding),
            disabledBorder: InputBorder.none,
            border: InputBorder.none, isDense: true,
            enabledBorder: InputBorder.none,
            prefixIconConstraints: const BoxConstraints(maxHeight: 50),
            prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 13, right: 15),
                child: Icon(
                  Icons.search,
                  color: AppColors.white,
                  size: 25,
                )),
            focusedBorder: InputBorder.none,
            // enabledBorder:
          )),
    );
  }
}
