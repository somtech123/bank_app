import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constants/color_constanat.dart';
import '../../authentication/Login/screen/login.dart';
import '../../contact/screen/contact.dart';
import '../controller/onboarding_controller.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});
  static String path = '/onBoarding';

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var ctr = Get.put(OnBoardingController());
  var index = 0;
  var screen = [
    LoginScreen(),
    Contact(),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ctr.onWillPop,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          color: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: CurvedNavigationBar(
              color: AppColors.primary,
              animationDuration: const Duration(milliseconds: 500),
              backgroundColor: Colors.transparent,
              items: [
                SvgPicture.asset("assets/svgs/house_icon.svg",
                    color: Colors.white),
                SvgPicture.asset("assets/svgs/message_icon.svg",
                    color: Colors.white),
              ],
              onTap: (value) {
                setState(() {
                  index = value;
                });
              },
            ),
          ),
        ),
        body: screen[index],
      ),
    );
  }
}
