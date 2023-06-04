import 'package:flutter/material.dart';
import 'util.dart';

class ScafoldedWidget2 extends StatelessWidget {
  final Widget body;
  final Gradient? gradient;
  final Function()? onScaffoldTap;
  final Widget? bottomNavigationBar;
  const ScafoldedWidget2({
    super.key,
    this.bottomNavigationBar,
    required this.body,
    this.onScaffoldTap,
    this.gradient,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: GestureDetector(
        onTap: onScaffoldTap,
        // () {
        //   Get.focusScope!.unfocus();
        // },
        child: Container(
          decoration: BoxDecoration(
            gradient: gradient ?? Utils.getPurpleGradient(),
          ),
          child: body,
        ),
      ),
    );
  }
}
