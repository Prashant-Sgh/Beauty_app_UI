import 'package:flutter/material.dart';

class OnboardButton extends StatelessWidget {
  final Color colour;
  final String buttonText;
  final Color buttonTextColour;
  const OnboardButton(
      {super.key,
      required this.colour,
      required this.buttonText,
      required this.buttonTextColour});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: 149,
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
              color: buttonTextColour,
              fontSize: 16,
              fontFamily: 'Raleway-Bold'),
        ),
      ),
    );
  }
}
