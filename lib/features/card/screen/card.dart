import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constants/color_constanat.dart';
import '../../../core/shared_widgets/primary_button.dart';
import '../../../core/shared_widgets/tab_button.dart';
import '../controller/card_controller.dart';
import '../widget/build_empty_card.dart';

class CardScreen extends StatelessWidget {
  CardScreen({super.key});
  static String path = '/Card';
  var ctr = Get.put(CardController());
  @override
  Widget build(BuildContext context) {
    RxInt tabIndex = 0.obs;
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          elevation: 0,
          title: Text(
            'Card',
            style: Theme.of(context).textTheme.button!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: AppColors.black,
                ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Request new',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: AppColors.primary,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.zero,
                  child: TabBar(
                      onTap: (value) {
                        tabIndex.value = value;
                      },
                      indicatorColor: Colors.transparent,
                      isScrollable: false,
                      labelColor: Colors.black,
                      labelPadding: EdgeInsets.zero,
                      tabs: [
                        tabButton('Virtual', index: 0, tabIndex: tabIndex),
                        tabButton('Physical', index: 1, tabIndex: tabIndex),
                        tabButton('Others', index: 2, tabIndex: tabIndex)
                      ]),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(
                        child: buildEmptyCard(context),
                      ),
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PrimaryButton(
                            label: 'Activate',
                            onPressed: () {},
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: buildEmptyCard(context),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
