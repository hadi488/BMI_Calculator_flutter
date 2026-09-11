import 'package:bmi_calculator_flutter/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const StartPage());
}

class StartPage extends StatelessWidget {
  const StartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
      ),
      home: InputPage(),
    );
  }
}
