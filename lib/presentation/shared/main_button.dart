import 'package:flutter/material.dart';
import 'package:phone_number_screen/res/typedef.dart';

class MainButton extends StatelessWidget {
  final VoidFunction onTap;
  final double width;
  final double height;
  final Widget child;
  final Color color;

  const MainButton({
    required this.onTap,
    required this.width,
    required this.height,
    required this.child,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(16.0),
      child: SizedBox(
        width: width,
        height: height,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16.0),
          child: child,
        ),
      ),
    );
  }
}
