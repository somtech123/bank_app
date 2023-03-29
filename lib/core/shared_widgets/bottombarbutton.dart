import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomBarButton extends StatelessWidget {
  final Widget child;
  final Function()? ontap;
  final Color? colorWhenPress;
  FocusNode? focusNode;
  BottomBarButton({
    super.key,
    required this.child,
    required this.ontap,
    this.colorWhenPress,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        focusNode: focusNode,
        onTap: ontap,
        highlightColor: colorWhenPress,
        child: child,
      ),
    );
  }
}
