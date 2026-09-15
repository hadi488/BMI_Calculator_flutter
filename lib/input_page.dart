import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'custom_container.dart';
import 'icon_content.dart';
import 'result_page.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;
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
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: kSliderActiveColor,
                      inactiveTrackColor: kSliderInactiveColor,
                      thumbColor: kSliderThumbColor,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayColor: kSliderThumbColor.withAlpha(0x1f),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                      min: 18,
                      max: 400,
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
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
                  child: CustomContainer(
                    containerchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("WEIGHT", style: kTextStyle),
                        SizedBox(height: kSizedBoxHeight),
                        Text(weight.toString(), style: kHeightNumTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            RawIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    containerColor: kActiveContainerColor,
                  ),
                ),
                Expanded(
                  child: CustomContainer(
                    containerchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("AGE", style: kTextStyle),
                        SizedBox(height: kSizedBoxHeight),
                        Text(age.toString(), style: kHeightNumTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            RawIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    containerColor: kActiveContainerColor,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultPage()),
              );
            },
            child: Container(
              child: Text("Calculate", style: kBottomTextStyle),
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              height: kBottomContainerHeight,
              color: kBottomContainerColor,
            ),
          ),
        ],
      ),
    );
  }
}

class RawIconButton extends StatelessWidget {
  const RawIconButton({super.key, this.icon, this.onPress});
  final FaIconData? icon;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      fillColor: kIconButtonColor,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: kIconButtonWidth,
        height: kIconButtonHeight,
      ),
      child: FaIcon(icon, color: Colors.white, size: 18),
    );
  }
}
