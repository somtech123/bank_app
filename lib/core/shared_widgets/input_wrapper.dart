import 'package:bank_app/core/utils/responsive_screen_methods.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class InputWrapper extends StatelessWidget {
  final String labelText;
  final Widget child;
  final Color? labelColor;
  final FontWeight? fontWeight;
  final double? spaceBetween;
  final double? width;
  const InputWrapper(
      {this.labelText = '',
      required this.child,
      required,
      this.fontWeight,
      this.labelColor,
      this.spaceBetween,
      this.width});

  @override
  Widget build(BuildContext context) {
    final sh = sHeight(context);

    return SizedBox(
      width: width ?? Get.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(labelText,
              style: Theme.of(context).textTheme.caption!.copyWith(
                  fontSize: sh(13), color: labelColor, fontWeight: fontWeight)),
          SizedBox(
            height: sh(
              spaceBetween ?? sh(4),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
