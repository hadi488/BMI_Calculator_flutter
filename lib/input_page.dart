import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("BMI calculator")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                CustomContainer(color: Color(0xFF1D1E33)),
                CustomContainer(color: Color(0xFF1D1E33)),
              ],
            ),
          ),
          CustomContainer(color: Color(0xFF1D1E33)),
          Expanded(
            child: Row(
              children: [
                CustomContainer(color: Color(0xFF1D1E33)),
                CustomContainer(color: Color(0xFF1D1E33)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  Color? color;
  CustomContainer({super.key, required this.color});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
      ),
    );
  }
}
