import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/dashboard_controller.dart';

Widget homeSearchBox(BuildContext context) {
  var ctr = Get.find<DashboardController>();
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 25.0),
    child: Container(
      width: Get.width - 30,
      child: TextField(
        style: Theme.of(context).textTheme.caption!.copyWith(
              color: Colors.black,
            ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 20),
          suffixIcon: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 7),
                child: Container(
                  height: 35.h,
                  width: 35.w,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
          helperStyle: const TextStyle(fontSize: 10),
          hintText: 'Search',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    ),
  );
}
