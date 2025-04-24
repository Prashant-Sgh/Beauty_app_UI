import 'package:flutter/material.dart';

class SelectTime extends StatelessWidget {
  final String child;
  final String family;
  final Color colour;
  final Color borderColour;
  const SelectTime(
      {super.key,
      required this.child,
      required this.family,
      required this.colour,
      required this.borderColour});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: 150,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: borderColour, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
        child: Center(
            child: Text(
          child,
          style: TextStyle(color: colour, fontSize: 18, fontFamily: family),
        )),
      ),
    );
  }
}
