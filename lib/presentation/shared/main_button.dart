import 'package:flutter/material.dart';
import 'package:phone_number_screen/res/typedef.dart';

class MainButton extends StatelessWidget {
  final VoidFunction onTap;
  final double width;
  final double height;
  final Widget child;
  final Color color;
  final double borderRadius;

  const MainButton({
    required this.onTap,
    required this.width,
    required this.height,
    required this.child,
    required this.color,
    this.borderRadius = 16.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(borderRadius),
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}
