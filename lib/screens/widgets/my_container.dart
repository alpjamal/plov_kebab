import 'package:flutter/material.dart';
import 'package:plov_kebab/utils/constants.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.child,
    this.padding,
    this.margin,
    this.color,
    this.height,
    this.width,
  });
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding ?? EdgeInsets.all(ProjectGap.main),
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.all(ProjectRadius.main),
      ),
      child: child,
    );
  }
}
