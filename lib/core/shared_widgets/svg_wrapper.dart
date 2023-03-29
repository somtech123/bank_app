import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

Widget showSvgImage(BuildContext context,
    {required String image, Color? color, double? height = 14}) {
  return SvgPicture.asset(
    "assets/svgs/$image.svg",
    height: height!.h,
    color: color ?? Color(0xff63BE41),
  );
}
