import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_container.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeContainerColor = Color(0xFF1D1E33);
const inActiveContainerColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  void selectGender(Gender gender) {
    setState(() {
      selectedGender = gender;
    });
  }

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
                Expanded(
                  child: CustomContainer(
                    onPress: () => selectGender(Gender.male),
                    containerchild: ContainerChildItems(
                      faIcon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                    containerColor: selectedGender == Gender.male
                        ? activeContainerColor
                        : inActiveContainerColor,
                  ),
                ),
                Expanded(
                  child: CustomContainer(
                    onPress: () => selectGender(Gender.female),
                    containerColor: selectedGender == Gender.female
                        ? activeContainerColor
                        : inActiveContainerColor,
                    containerchild: ContainerChildItems(
                      faIcon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomContainer(containerColor: activeContainerColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomContainer(containerColor: activeContainerColor),
                ),
                Expanded(
                  child: CustomContainer(containerColor: activeContainerColor),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: bottomContainerHeight,
            color: bottomContainerColor,
          ),
        ],
      ),
    );
  }
}
