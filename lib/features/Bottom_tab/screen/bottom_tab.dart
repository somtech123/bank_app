import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constants/color_constanat.dart';
import '../../../core/shared_widgets/bottombarbutton.dart';
import '../../../core/shared_widgets/svg_wrapper.dart';
import '../../Qr_code/screen/qr_code.dart';
import '../../analytics/screen/analytics.dart';
import '../../card/screen/card.dart';
import '../../contact/screen/contact.dart';
import '../../dashbord/screen/dashboard.dart';
import '../../menu/screen/menu.dart';
import '../controller/bottom_bar_controller.dart';

class BottomBar extends StatefulWidget {
  static String path = '/BottomBar';
  BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var controller = Get.put(BottomBarController());
  int index = 0;
  var screen = [
    DashBoard(),
    Menu(),
    Analytics(),
    // QrCodeScreen(),
    Contact(),
    CardScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: sort_child_properties_last
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          color: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: CurvedNavigationBar(
              color: AppColors.primary,
              animationDuration: const Duration(milliseconds: 500),
              backgroundColor: Colors.transparent,
              items: [
                SvgPicture.asset("assets/svgs/house_icon.svg",
                    color: Colors.white),
                SvgPicture.asset("assets/dark/svgs/pay_me_link.svg",
                    color: Colors.white),
                SvgPicture.asset("assets/svgs/pay_with_qr.svg",
                    color: Colors.white),
                SvgPicture.asset("assets/svgs/message_icon.svg",
                    color: Colors.white),
                SvgPicture.asset("assets/svgs/card.svg", color: Colors.white),
              ],
              onTap: (value) {
                setState(() {
                  index = value;
                });
              },
            ),
          ),
        ),
        body: screen[index],
      ),
      onWillPop: controller.onWillPop,
    );
  }
}

// class BottomTabBar extends StatelessWidget {
//   final BottomBarController dashBoardScreenController =
//       Get.put(BottomBarController());
//   final TabController tabController;
//   RxBool isCurrentView = false.obs;

//   final List<Map<String, dynamic>> tabData;
//   BottomTabBar({required this.tabController, required this.tabData});

//   @override
//   Widget build(BuildContext context) {
//     return TabBar(
//       tabs: _buildTabs(context),
//     );
//   }

//   _buildTabs(BuildContext context) {
//     return dashBoardScreenController
//         .getTabData()
//         .asMap()
//         .map((index, value) {
//           return MapEntry(
//             index,
//             BottomBarButton(
//               child: Obx(
//                 () => Tab(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       showSvgImage(
//                         context,
//                         image: value['icon'],
//                         color: dashBoardScreenController.tabIndex.value == index
//                             ? AppColors.primary
//                             : Colors.grey[400],
//                       ),
//                       const SizedBox(height: 5),
//                       Text(
//                         "${value['title']}",
//                         style: Theme.of(context).textTheme.button!.copyWith(
//                             fontSize: 9,
//                             color: dashBoardScreenController.tabIndex.value ==
//                                     index
//                                 ? AppColors.primary
//                                 : Colors.grey[400]),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               ontap: () {
//                 dashBoardScreenController.updateTabIndex(index);
//               },
//             ),
//           );
//         })
//         .values
//         .toList();
//   }
// }
