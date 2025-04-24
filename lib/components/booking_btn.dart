import 'package:flutter/material.dart';

class UIButton extends StatelessWidget {
  final String text;
  final Color? backgroundColour;
  final Color? textColour;
  const UIButton(
      {super.key,
      required this.text,
      this.backgroundColour = const Color(0xFFFDCCC5),
      this.textColour = const Color(0xFFFFFFFF)});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 30),
      width: 271,
      height: 54,
      decoration: BoxDecoration(
          color: backgroundColour, borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontFamily: 'Raleway-Bold', color: textColour, fontSize: 16),
        ),
      ),
    );
  }
}
