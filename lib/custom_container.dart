import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final Widget? containerchild;
  const CustomContainer({super.key, required this.color, this.containerchild});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: containerchild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
      ),
    );
  }
}
