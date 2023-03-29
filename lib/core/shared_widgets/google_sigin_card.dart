import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildGoogleSignInCard(BuildContext context) {
  return Container(
    height: 50,
    width: Get.width,
    color: Colors.black,
    child: Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/google.png',
          height: 25,
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          'Continue with Google',
          style:
              Theme.of(context).textTheme.button!.copyWith(color: Colors.white),
        )
      ],
    )),
  );
}
