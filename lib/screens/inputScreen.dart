import 'dart:ui';

import 'package:bmi_calculator/common_widget/Iconcontent.dart';
import 'package:bmi_calculator/common_widget/reusableCard.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedgender;
  // Color maleColor = kDisableColor;
  // Color femaleColor = kDisableColor;
  //
  // void updateColor(Gender selectedgender) {
  //   if (selectedgender == Gender.male) {
  //     if (maleColor == kDisableColor){
  //       maleColor = kActiveCardColor;
  //       femaleColor = kDisableColor;
  //     }else{
  //       maleColor = kDisableColor;
  //     }
  //   }
  //   if (selectedgender == Gender.female) {
  //     if (femaleColor == kDisableColor){
  //       femaleColor = kActiveCardColor;
  //       maleColor = kDisableColor;
  //     }else{
  //       femaleColor = kDisableColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  reusableCard(
                    onPressed: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                      print('male is clicked');
                    },
                    color: selectedgender == Gender.male
                        ? kActiveCardColor
                        : kDisableColor,
                    cardChild: Iconcontent(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                  reusableCard(
                    onPressed: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                      print('female is clicked');
                    },
                    color: selectedgender == Gender.female
                        ? kActiveCardColor
                        : kDisableColor,
                    cardChild: Iconcontent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: reusableCard(
                onPressed: () {
                  print(' middle row is clicked');
                },
                color: kDisableColor,
                cardChild: Iconcontent(
                  icon: FontAwesomeIcons.mars,
                  label: "MALE",
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                reusableCard(
                  onPressed: () {
                    print('last row left side is clicked');
                  },
                  color: kDisableColor,
                  cardChild: Iconcontent(
                    icon: FontAwesomeIcons.mars,
                    label: "MALE",
                  ),
                ),
                reusableCard(
                  onPressed: () {
                    print('last row right side is clicked');
                  },
                  color: kDisableColor,
                  cardChild: Iconcontent(
                    icon: FontAwesomeIcons.mars,
                    label: "MALE",
                  ),
                )
              ],
            )),
          ],
        ));
  }
}
