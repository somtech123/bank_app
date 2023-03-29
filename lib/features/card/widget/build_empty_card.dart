import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildEmptyCard(BuildContext context) {
  return Column(
    children: [
      SizedBox(
        height: 100.h,
      ),
      Stack(children: [
        Center(
          child: SvgPicture.asset(
            'assets/svgs/card.svg',
            height: 80,
            color: Colors.grey,
          ),
        ),
        const Positioned(
          left: 195,
          bottom: 2,
          child: FaIcon(
            MaterialCommunityIcons.alpha_x_circle,
            color: Colors.white,
            size: 40,
          ),
        ),
      ]),
      SizedBox(
        height: 30.h,
      ),
      Text(
        'No cards Found',
        style: Theme.of(context).textTheme.button!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
      )
    ],
  );
}
