import 'package:flutter/material.dart';

class reusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;

  reusableCard({required this.color, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          child: cardChild,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
        )
    );
  }
}