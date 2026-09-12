import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const iconSize = 80.0;
const sizedBoxHeight = 15.0;
const textStyle = TextStyle(fontSize: 18, color: Color(0xFF8D8E98));

class ContainerChildItems extends StatelessWidget {
  final FaIconData? faIcon;
  final String? text;
  const ContainerChildItems({super.key, this.faIcon, this.text = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(faIcon, size: iconSize),
        SizedBox(height: sizedBoxHeight),
        Text(text!, style: textStyle),
      ],
    );
  }
}
