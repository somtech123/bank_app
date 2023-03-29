import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

/// Class contains the project color definitions
class AppColors {
  static const Color gray = Color(0xffEDEDED);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color primary = Color.fromARGB(255, 126, 6, 40);

  static const Color primaryAccent = Color(0xffE0FEBE);
  static const Color deepBlue = Color(0xff012956);
  static const Color deepYellow = Color(0xffF1C72F);
  static const Color deepOrange = Color(0xffFFBE40);
  static const Color accent = Color(0xff8DC97A);
  static const Color lightBlue = Color(0xff1D99A2);
  static const Color accent2 = Color(0xffF8F1D9);
  static const Color caption = Color(0xff808080);
  static final Color onlineDotColor = Color(0xff46dc64);
  static const Color success = Color(0xff25AE88); //#25AE88
  static const Color none = Colors.transparent;
  static const Color buttonOverlay = Color(0xffE2F3FF);
  static const Color appBarBgDark = Color(0xff272727);
  static const Color links = Color(0xff2196F3);
  static const Color warning = Color(0xffFD0000);
  static const Color lightBackground = Color(0xffFFFFFF);
  static const Color darkBackground = Color(0xff252827);
  static const Color darkerGray = Color(0xff7A7A7A);
  static const Color overlayColor = Color.fromRGBO(29, 29, 29, 0.2);
  static Color inputBg = Color.fromRGBO(112, 112, 112, 0.1);

  static final Color blueColor = Color(0xff2b9ed4);
  static final Color blackColor = Color(0xff19191b);
  static final Color greyColor = Color(0xff8f8f8f);
  static final Color indicatorColor = Color(0xffF19562);
  static final Color userCircleBackground = Color(0xff2b2b33);
  static final Color lightBlueColor = Color(0xff0077d7);
  static final Color separatorColor =
      Get.isDarkMode ? Color(0xff272c35) : Colors.grey[200]!;

  static final Color senderColor = Color(0xff2b343b);
  static final Color receiverColor = Color(0xff1e2225);

  static const Color bottomSheetBg = Color(0xffFCFCFC);
  static const Color bottomSheetBgDark = Color(0xff272727);
  static const Color bottomSheetIcon = Color(0xffDEDEDE);
  static const Color bgGrayLight = Color(0xffE5E5E5);

  static const Color onboardingBackground = Color(0xffFAFAFA);
  static const Color hniBackground = Color(0xffEFF0F2);

  static const Color gradientColorStart = primary;
  static const Color gradientColorEnd = primary;
  // static final Gradient fabGradient = LinearGradient(
  //     colors: [gradientColorStart, gradientColorEnd],
  //     begin: Alignment.topLeft,
  //     end: Alignment.bottomRight);

  static const Gradient cardGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 126, 6, 40),
      Color.fromARGB(255, 209, 11, 11),
    ],
    begin: Alignment(-1.0, 0.0),
    end: Alignment(1.0, 0.0),
    transform: GradientRotation(math.pi / 4),
  );

  static rgbo(int r, int g, int b, double opacity) =>
      Color.fromRGBO(r, g, b, opacity);
}
