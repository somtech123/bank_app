import 'package:bank_app/features/dashbord/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../constants/color_constanat.dart';
import '../../../core/shared_widgets/primary_button.dart';
import '../controller/dashboard_controller.dart';
import '../widgets/build_banner.dart';

import '../widgets/build_dashboard_card.dart';
import '../widgets/build_greeting_header.dart';
import '../widgets/build_quick_links.dart';
import '../widgets/build_search_box.dart';

class DashBoard extends StatelessWidget {
  DashBoard({super.key});
  static String path = '/Dashboard';

  var ctr = Get.put(DashboardController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Get.to(() => Profile()),
                    child: Expanded(
                      child: buildGreetingHeader(context),
                    ),
                  ),
                  const Icon(
                    SimpleLineIcons.bell,
                    size: 20,
                    color: AppColors.primary,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: homeSearchBox(context)),
                ],
              ),
            ),
            SizedBox(
                height: 150.h,
                child: ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: Get.height / 5,
                      width: Get.width / 1.1,
                      decoration: BoxDecoration(
                        gradient: AppColors.cardGradient,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: buildDashboardCard(context),
                    ),
                  ),
                )),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Qick Links',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                  ),
                  Text(
                    'See More',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: AppColors.primary,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildQuickLink(
                    context,
                    icon: const Icon(
                      FontAwesome.angle_double_left,
                    ),
                    text: 'Transfer',
                  ),
                  buildQuickLink(
                    context,
                    icon: const Icon(
                      FontAwesome.mobile,
                    ),
                    text: 'Top-up',
                  ),
                  buildQuickLink(
                    context,
                    icon: const FaIcon(
                      FontAwesomeIcons.moneyBill,
                    ),
                    text: 'Pay Bills',
                  ),
                  buildQuickLink(
                    context,
                    icon:
                        const Icon(MaterialCommunityIcons.credit_card_outline),
                    text: 'Account',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallButton(
                    label: 'Savings Plans',
                    onPressed: () {},
                  ),
                  SmallButton(
                    label: 'Invest Now',
                    onPressed: () {},
                  )
                  //  / buildButton(context, text: 'Savings Plans', ontap: () {}),
                  //   buildButton(context, text: 'Invest Now', ontap: () {}),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'News and Update',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                  ),
                  SizedBox(
                    height: 150.h,
                    child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: buildBanner(context),
                      ),
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
