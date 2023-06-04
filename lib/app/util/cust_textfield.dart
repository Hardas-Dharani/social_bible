import 'package:flutter/material.dart';

import '../config/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;

  final String? Function(String?)? validator;
  final bool? readOnly;
  final String labelText;
  final Widget? icon;
  final bool? obscureText;
  final Function()? onTap;
  final FocusNode? focusNode;
  const CustomTextField({
    required this.textEditingController,
    this.validator,
    this.readOnly,
    required this.labelText,
    this.icon,
    this.obscureText,
    this.onTap,
    this.focusNode,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
      child: TextFormField(
        controller: textEditingController,
        readOnly: readOnly ?? false,
        focusNode: focusNode,
        validator: validator,
        obscureText: obscureText ?? false,
        cursorColor: AppColors.black,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.black),
        decoration: InputDecoration(
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.black,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.black,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.black,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.black,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          suffixIcon: IconButton(
            icon: icon ?? SizedBox.shrink(),
            onPressed: onTap,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.black,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          fillColor: AppColors.white,
          errorStyle: TextStyle(color: AppColors.black),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          hintText: labelText, filled: true,
          // floatingLabelStyle: TextStyle(
          //     fontSize: 14,
          //     fontWeight: FontWeight.w300,
          //     color: AppColors.txtGrey),
          // labelStyle: TextStyle(
          //     fontSize: 14,
          //     fontWeight: FontWeight.w300,
          //     color: AppColors.txtGrey),
        ),
      ),
    );
  }
}
