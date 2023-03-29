import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

Widget buildQuickLink(
  BuildContext context, {
  Widget? icon,
  String? text,
}) {
  return Column(
    children: [
      Stack(
        children: [
          SizedBox(
            height: 70.h,
            child: Container(
              width: 70.w,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 20,
            child: icon!,
          )
        ],
      ),
      SizedBox(
        height: 10.h,
      ),
      Text(
        text!,
        style: Theme.of(context).textTheme.button!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
      ),
    ],
  );
}
