import 'package:bank_app/constants/color_constanat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AppInput extends StatelessWidget {
  final String? hintText;

  final TextStyle? textStyle;

  final InputDecoration? inputDecoration;

  final void Function(String)? onChanged;

  final void Function(String)? onEditingComplete;

  final TextInputType? keyboardType;

  final bool obscureText;

  final String? errorMessage;

  final FocusNode? focusNode;

  final TextEditingController? controller;

  final bool enabled;

  final List<TextInputFormatter>? inputFormatters;

  final bool enableInteractiveSelection;

  final double borderRadius;

  final Color? fillColor;

  final Widget? suffixIcon;

  final Widget? prefixIcon;

  final String? helperText;

  final bool isTransparentBorder;

  final Color? textColor;

  final int? maxLines;

  final TextCapitalization textCapitalization;

  final Color borderColor;

  final int maxLength;

  AppInput(
      {super.key,
      this.hintText,
      this.suffixIcon,
      this.prefixIcon,
      this.onChanged,
      this.onEditingComplete,
      this.keyboardType,
      this.errorMessage,
      this.controller,
      this.focusNode,
      this.borderRadius = 6.0,
      this.enabled = true,
      this.inputFormatters,
      this.maxLines,
      this.helperText,
      this.enableInteractiveSelection = true,
      this.obscureText = false,
      this.isTransparentBorder = false,
      this.textCapitalization = TextCapitalization.sentences,
      this.borderColor = AppColors.gray,
      this.textColor,
      this.maxLength = TextField.noMaxLength,
      this.textStyle,
      this.inputDecoration})
      : fillColor = Get.isDarkMode ? AppColors.none : AppColors.white;

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context).inputDecorationTheme;
    return TextField(
      enableSuggestions: false,
      autocorrect: false,
      inputFormatters: inputFormatters,
      enableInteractiveSelection: enableInteractiveSelection,
      enabled: enabled,
      textCapitalization: textCapitalization,
      controller: controller,
      focusNode: focusNode,
      obscureText: obscureText,
      maxLines: maxLines ?? 1,
      keyboardType: keyboardType,
      maxLength: maxLength,
      style: textStyle ??
          Theme.of(context).textTheme.button!.copyWith(fontSize: 13.sp),
      decoration: inputDecoration ??
          InputDecoration(
            labelText: hintText,
            helperText: helperText,
            errorText: errorMessage == "" || errorMessage == null
                ? null
                : errorMessage,
            counterText: "",
            errorStyle: TextStyle(fontSize: 12.sp),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Get.isDarkMode ? AppColors.white : Colors.grey),
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400]!, width: 1)),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400]!, width: 1)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color:
                        isTransparentBorder ? AppColors.primary : borderColor,
                    width: 1)),
            disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color:
                        isTransparentBorder ? Colors.transparent : borderColor,
                    width: 1)),
            errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: isTransparentBorder ? Colors.red : borderColor,
                    width: 1)),
            filled: true,
            fillColor: fillColor,
            // hintText: hintText,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
          ),
      onChanged: onChanged,
    );
  }
}
