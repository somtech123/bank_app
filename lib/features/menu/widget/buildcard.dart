import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildCardLink(
  BuildContext context, {
  Widget? icon,
  String? text,
  Function? onPressed,
}) {
  return GestureDetector(
    onTap: onPressed == null ? null : () => onPressed(),
    child: Card(
      elevation: 1,
      child: SizedBox(
        height: 100.h,
        width: 90.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 50.h,
                  width: 80.w,
                  child: Container(
                    // width: 100.w,
                    // height: 70.h,
                    decoration: BoxDecoration(),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: icon!,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: Text(
                text!,
                style: Theme.of(context).textTheme.button!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Raleway',
                      fontSize: 12,
                    ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
