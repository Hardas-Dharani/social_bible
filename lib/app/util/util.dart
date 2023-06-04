import 'package:flutter/material.dart';

import '../extensions/color.dart';

class Utils {
  static String getImagePath(String name, {String format = 'png'}) {
    return 'assets/images/$name.$format';
  }

  static String getSvgFilePath(String name, {String format = 'svg'}) {
    return 'assets/svg/$name.$format';
  }

  static Gradient getWhiteGradient() {
    return const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.white,
        Colors.white,
      ],
    );
  }

  static Gradient getPurpleGradient() {
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        HexColor("1A203A"),
        HexColor("1A203A"),
      ],
    );
  }
}
