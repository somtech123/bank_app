import 'package:bank_app/constants/color_constanat.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildDashboardCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total Account Balance',
          style: Theme.of(context).textTheme.button!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                color: AppColors.white,
              ),
        ),
        SizedBox(
          height: 10.h,
        ),
        const Divider(
          color: Colors.white,
        ),
        Text(
          'AVAILABLE BALANCE',
          style: Theme.of(context).textTheme.button!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                color: AppColors.white,
              ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          '# 13, 655.35',
          style: Theme.of(context).textTheme.button!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.white,
              ),
        ),
      ],
    ),
  );
}
