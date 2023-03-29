import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../constants/color_constanat.dart';
import '../../dashbord/widgets/build_quick_links.dart';
import '../controller/menu_controller.dart';
import '../widget/buildcard.dart';

class Menu extends StatelessWidget {
  Menu({super.key});
  static String path = '/Menu';

  var ctr = Get.put(MenuScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Payments',
          style: Theme.of(context).textTheme.button!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.black,
              ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildCardLink(
                    context,
                    icon: const Icon(
                      FontAwesome.angle_double_left,
                      color: AppColors.primary,
                    ),
                    text: 'Make a transfer',
                  ),
                  buildCardLink(
                    context,
                    icon: const FaIcon(
                      FontAwesomeIcons.moneyBill,
                      color: AppColors.primary,
                    ),
                    text: 'Pay bills',
                  ),
                  buildCardLink(
                    context,
                    icon: const Icon(
                      FontAwesome.mobile,
                      color: AppColors.primary,
                      //size: 30,
                    ),
                    text: 'Moile top-up',
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCardLink(
                    context,
                    icon: const Icon(
                      MaterialCommunityIcons.sack,
                      color: AppColors.primary,
                    ),
                    text: 'Cardless withdrawals',
                  ),
                  buildCardLink(
                    context,
                    icon: const FaIcon(
                      FontAwesomeIcons.envelope,
                      color: AppColors.primary,
                    ),
                    text: 'Invite/redeem',
                  ),
                  buildCardLink(
                    context,
                    icon: const Icon(
                      MaterialCommunityIcons.credit_card_outline,
                      color: AppColors.primary,
                    ),
                    text: 'Fund account',
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCardLink(
                    context,
                    icon: const Icon(
                      MaterialCommunityIcons.rotate_right,
                      color: AppColors.primary,
                    ),
                    text: 'Recurring transactions ',
                  ),
                  buildCardLink(
                    context,
                    icon: const Icon(
                      MaterialCommunityIcons.map_marker,
                      color: AppColors.primary,
                    ),
                    text: 'Proximity payments',
                  ),
                  buildCardLink(
                    context,
                    icon: const Icon(
                      MaterialCommunityIcons.qrcode_scan,
                      color: AppColors.primary,
                    ),
                    text: 'QR code',
                    onPressed: () => ctr.scanQr(),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCardLink(
                    context,
                    icon: const Icon(
                      MaterialCommunityIcons.heart_flash,
                      color: AppColors.primary,
                    ),
                    text: 'Health Checkup',
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I need help',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Raleway',
                          color: AppColors.primary,
                          fontSize: 15,
                        ),
                  ),
                  Image.asset(
                    'assets/gifs/help.gif',
                    height: 40,
                  )
                ],
              ),
              SizedBox(
                height: 200.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
