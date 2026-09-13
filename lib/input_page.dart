import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'custom_container.dart';
import 'icon_content.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
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
                        ? kActiveContainerColor
                        : kInActiveContainerColor,
                  ),
                ),
                Expanded(
                  child: CustomContainer(
                    onPress: () => selectGender(Gender.female),
                    containerColor: selectedGender == Gender.female
                        ? kActiveContainerColor
                        : kInActiveContainerColor,
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
            child: CustomContainer(
              containerchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("HEIGHT", style: kTextStyle),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(height.toString(), style: kHeightNumTextStyle),
                      Text("cm", style: kTextStyle),
                    ],
                  ),
                  Slider(
                    activeColor: kSliderActiveColor,
                    inactiveColor: kSliderInactiveColor,
                    min: 18,
                    max: 400,
                    value: height.toDouble(),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
              containerColor: kActiveContainerColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomContainer(containerColor: kActiveContainerColor),
                ),
                Expanded(
                  child: CustomContainer(containerColor: kActiveContainerColor),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: kBottomContainerHeight,
            color: kBottomContainerColor,
          ),
        ],
      ),
    );
  }
}
