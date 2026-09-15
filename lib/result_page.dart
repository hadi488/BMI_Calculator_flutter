import 'package:flutter/material.dart';

import 'constants.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your BMI Result')),
      body: Center(child: Text('Your BMI is: 22.5', style: kTextStyle)),
    );
  }
}
