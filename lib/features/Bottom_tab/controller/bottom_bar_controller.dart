import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //late TabController dashBoardTabController;

  RxInt tabIndex = 0.obs;
  RxBool isFetchingUserDetails = true.obs;

  @override
  void onReady() {
    // initDepenedencies();
    super.onInit();
  }

  Future<bool> onWillPop() {
    return Future.value(false);
  }

  // List<Map<String, dynamic>> getTabData() {
  //   return [
  //     {"icon": "home", "title": "Chats"},
  //     {"icon": "chats", "title": "Chats"},
  //     {"icon": "orders", "title": "Orders"},
  //     {"icon": "menu", "title": "Menu"}
  //   ];
  // }

  // initDepenedencies() {
  //   dashBoardTabController = TabController(length: 5, vsync: this);
  // }

  // void updateTabIndex(int tabNumber) {
  //   tabIndex.value = tabNumber;
  //   dashBoardTabController.animateTo(tabNumber);
  //   update();
  // }
}
