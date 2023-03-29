import 'package:flutter/material.dart';

import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constants/color_constanat.dart';
import '../../../core/shared_widgets/build_contact_card.dart';
import '../controller/profile_controller.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  var ctr = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.button!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.black,
              ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/person.png'),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '1290753481',
                      style: Theme.of(context).textTheme.button!.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            color: AppColors.black,
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'View my bvn',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          fontFamily: 'Raleway',
                          color: AppColors.primary,
                        ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            buildContactCard(context,
                icon: const Icon(
                  MaterialCommunityIcons.chart_line_variant,
                  color: AppColors.primary,
                ),
                text: 'Account preference management'),
            buildContactCard(context,
                icon: const Icon(
                  MaterialCommunityIcons.settings,
                  color: AppColors.primary,
                ),
                text: 'Analtytics'),
            buildContactCard(context,
                icon: const Icon(
                  MaterialCommunityIcons.upload,
                  color: AppColors.primary,
                ),
                text: 'Update KYC level'),
            buildContactCard(context,
                icon: const Icon(
                  MaterialCommunityIcons.account,
                  color: AppColors.primary,
                ),
                text: 'Personal updates'),
            buildContactCard(context,
                icon: const Icon(
                  MaterialCommunityIcons.signature,
                  color: AppColors.primary,
                ),
                text: 'Add Signature'),
            buildContactCard(context,
                icon: const Icon(
                  MaterialCommunityIcons.fingerprint,
                  color: AppColors.primary,
                ),
                text: 'Biometric Login'),
            buildContactCard(context,
                icon: const Icon(
                  MaterialCommunityIcons.pin,
                  color: AppColors.primary,
                ),
                text: 'Pin and Password'),
            buildContactCard(context,
                icon: const Icon(
                  MaterialCommunityIcons.share,
                  color: AppColors.primary,
                ),
                text: 'Share my referral ID'),
            buildContactCard(context,
                icon: const Icon(
                  MaterialCommunityIcons.library_books,
                  color: AppColors.primary,
                ),
                text: 'Application rules and policies'),
            buildContactCard(context,
                icon: const Icon(
                  MaterialCommunityIcons.logout,
                  color: AppColors.primary,
                ),
                text: 'Logout'),
            SizedBox(
              height: 100.h,
            )
          ],
        ),
      ),
    );
  }
}
