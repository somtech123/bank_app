import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildGreetingHeader(BuildContext context) {
  return Row(
    children: [
      const CircleAvatar(
        backgroundImage: AssetImage('assets/images/person.png'),
        radius: 20,
      ),
      SizedBox(
        width: 10.w,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome,',
            style: Theme.of(context).textTheme.button!.copyWith(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w800),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            'Power Smoke,',
            style: Theme.of(context).textTheme.button!.copyWith(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w800),
          ),
        ],
      ),
    ],
  );
}
