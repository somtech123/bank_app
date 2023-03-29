import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constants/color_constanat.dart';
import '../widgets/build_analytic_card.dart';

class Analytics extends StatelessWidget {
  const Analytics({super.key});
  static String path = '/analytics';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'More',
          style: Theme.of(context).textTheme.button!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.black,
              ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '    Select account',
                style: Theme.of(context).textTheme.button!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.black,
                    ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Card(
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Universal Saving Account',
                        style: Theme.of(context).textTheme.button!.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: AppColors.black,
                            ),
                      ),
                      Text(
                        '1234567890',
                        style: Theme.of(context).textTheme.button!.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: AppColors.black,
                            ),
                      ),
                    ],
                  ),
                  trailing: const Icon(
                    FontAwesome.angle_down,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: Get.width,
                height: Get.height / 2.6,
                decoration: BoxDecoration(
                  gradient: AppColors.cardGradient,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: buildAnalyticsCard(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
