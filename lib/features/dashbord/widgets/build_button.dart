import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/color_constanat.dart';
import '../../../constants/int_constants.dart';

Widget buildButton(
  BuildContext context, {
  String? text,
  required Function ontap,
}) {
  return InkWell(
    onTap: ontap == null ? null : () => ontap,
    child: AnimatedContainer(
      duration: const Duration(
          microseconds: IntConstants.buttonSplashAnimationDuration),
      height: 40.h,
      width: 160.w,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        gradient: AppColors.cardGradient,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
        ),
        child: Row(
          children: [
            Text(
              text!,
              style: Theme.of(context).textTheme.button!.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.white,
                  ),
            ),
            SizedBox(
              width: 10.w,
            ),
            const Icon(
              FontAwesome.angle_right,
              color: AppColors.white,
            ),
          ],
        ),
      ),
    ),
  );
}
