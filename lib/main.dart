import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'core/routes/app_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/authentication/Register/screen/register.dart';
import 'features/onboarding/screen/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize:
          Platform.isIOS ? const Size(375, 812) : Size(Get.width, Get.height),
      builder: (context, _) => GetMaterialApp(
        title: 'Som',
        debugShowCheckedModeBanner: false,
        smartManagement: SmartManagement.keepFactory,
        theme: ThemeData(fontFamily: GoogleFonts.dmSans().fontFamily),
        home: OnBoardingScreen(),
        initialRoute: OnBoardingScreen.path,
        getPages: AppPages.appPages,
      ),
    );
  }
}
