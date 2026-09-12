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
  Color maleCardColor = inActiveContainerColor;
  Color femaleCardColor = inActiveContainerColor;
  // 1 = male , 2 = female
  void updateGenderCardColor(Gender gender) {
    setState(() {
      if (gender == Gender.male) {
        if (maleCardColor == inActiveContainerColor) {
          maleCardColor = activeContainerColor;
          femaleCardColor = inActiveContainerColor;
        }
      } else {
        if (femaleCardColor == inActiveContainerColor) {
          femaleCardColor = activeContainerColor;
          maleCardColor = inActiveContainerColor;
        }
      }
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
                  child: GestureDetector(
                    onTap: () {
                      updateGenderCardColor(Gender.male);
                    },
                    child: CustomContainer(
                      containerchild: ContainerChildItems(
                        faIcon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                      containerColor: maleCardColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateGenderCardColor(Gender.female);
                    },
                    child: CustomContainer(
                      containerColor: femaleCardColor,
                      containerchild: ContainerChildItems(
                        faIcon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
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
