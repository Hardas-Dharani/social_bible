import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:social_bible/app/config/app_colors.dart';

import '../../../app/util/util.dart';
import '../../../routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;
  double _rotation = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (_controller!.isCompleted) {
              _controller!.reverse();
            } else {
              _controller!.forward();
            }
          },
          child: AnimatedBuilder(
            animation: _animation!,
            builder: (BuildContext context, Widget? child) {
              return Transform.rotate(
                angle: _rotation,
                child: Opacity(
                  opacity: _animation!.value,
                  child: SvgPicture.asset(
                    Utils.getSvgFilePath("logo"),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller!);

    _controller!
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            _rotation = 0.0;
          });
        }
      })
      ..addListener(() {
        setState(() {
          _rotation = _controller!.value * 2 * 3.14159;
        });
      });

    _controller!.forward();

    Future.delayed(const Duration(seconds: 6)).whenComplete(
      () {
        Get.toNamed(Routes.startScreen);
      },
    );
  }
}
