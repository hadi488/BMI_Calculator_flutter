import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color containerColor;
  final Widget? containerchild;
  final void Function()? onPress;
  const CustomContainer({
    super.key,
    required this.containerColor,
    this.containerchild,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: containerColor,
        ),
        child: containerchild,
      ),
    );
  }
}
