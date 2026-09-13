import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class ContainerChildItems extends StatelessWidget {
  final FaIconData? faIcon;
  final String? text;
  const ContainerChildItems({super.key, this.faIcon, this.text = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(faIcon, size: kIconSize),
        SizedBox(height: kSizedBoxHeight),
        Text(text!, style: kTextStyle),
      ],
    );
  }
}
