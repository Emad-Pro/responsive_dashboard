import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/const/constant.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget(
      {super.key, required this.child, this.color, this.padding});
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color ?? cardBackgroundColor),
      padding: padding ?? const EdgeInsets.all(12),
      child: child,
    );
  }
}
