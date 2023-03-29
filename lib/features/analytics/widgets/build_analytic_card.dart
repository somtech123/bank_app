import 'package:bank_app/constants/color_constanat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/shared_widgets/primary_button.dart';

Widget buildAnalyticsCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      children: [
        Text(
          'Hey Smoke, here is your transaction activities so far.',
          style: Theme.of(context).textTheme.button!.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.white,
                fontSize: 13,
              ),
        ),
        SizedBox(
          height: 10.h,
        ),
        const Divider(
          color: Colors.white,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ExtraSmallButton(
              onPressed: () {},
              label: 'March 2023',
            ),
            ExtraSmallButton(
              onPressed: () {},
              label: 'View Analytics',
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        const Divider(
          color: Colors.white,
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    '59',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                          fontSize: 27,
                        ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'transaction worths',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.white,
                          fontSize: 18,
                        ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    '76,9075.07',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                          fontSize: 21,
                        ),
                  ),
                ],
              ),
              const VerticalDivider(
                thickness: 2,
                color: Colors.white,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    '76,9075',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                          fontSize: 21,
                        ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'inflow',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                          fontSize: 17,
                        ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    '76,9075',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                          fontSize: 21,
                        ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'inflow',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                          fontSize: 17,
                        ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}
