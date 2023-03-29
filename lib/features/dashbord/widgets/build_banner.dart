import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget buildBanner(BuildContext context) {
  return Container(
    height: 100.h,
    width: Get.width,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage('assets/images/ad2.png'),
          fit: BoxFit.cover,
        )),
  );
}
