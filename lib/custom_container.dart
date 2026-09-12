import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color containerColor;
  final Widget? containerchild;
  const CustomContainer({
    super.key,
    required this.containerColor,
    this.containerchild,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: containerchild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: containerColor,
      ),
    );
  }
}
