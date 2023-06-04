import 'package:flutter/material.dart';
import 'package:social_bible/app/config/app_colors.dart';

class CustomButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient? gradient;
  final VoidCallback? onPressed;
  final Widget child;
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width = 343,
    this.height = 59.0,
    this.gradient,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.white),
        borderRadius:
            borderRadius ?? const BorderRadius.all(Radius.circular(33)),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Colors.black,
                width: 2,
              ),
              borderRadius:
                  borderRadius ?? const BorderRadius.all(Radius.circular(33))),
        ),
        child: child,
      ),
    );
  }
}
