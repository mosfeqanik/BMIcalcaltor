import 'dart:ui';

import 'package:bmi_calculator/common_widget/Iconcontent.dart';
import 'package:bmi_calculator/common_widget/reusableCard.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

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
                    onPressed: (){
                      print('male is clicked');
                    },
                    color: kDisableColor,
                    cardChild: Iconcontent(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                  reusableCard(
                    onPressed: (){
                      print('female is clicked');
                    },
                    color: kDisableColor,
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
                onPressed: (){
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
                  onPressed: (){
                    print('last row left side is clicked');
                  },
                  color: kDisableColor,
                  cardChild: Iconcontent(
                    icon: FontAwesomeIcons.mars,
                    label: "MALE",
                  ),
                ),
                reusableCard(
                  onPressed: (){
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
