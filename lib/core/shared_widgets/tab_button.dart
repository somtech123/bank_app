import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color_constanat.dart';

Widget tabButton(
  String text, {
  required int index,
  required RxInt tabIndex,
}) {
  return Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: Obx(() => Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 35.h,
          decoration: index == tabIndex.value
              ? BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(5))
              : BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: .5, color: Colors.grey)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text,
                  style: GoogleFonts.inter(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: index == tabIndex.value
                          ? Colors.white
                          : Colors.grey)),
            ],
          ),
        )),
  );
}
