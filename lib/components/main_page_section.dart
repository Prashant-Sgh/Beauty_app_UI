import 'package:flutter/material.dart';

class MainPageSection extends StatelessWidget {
  final String sectionName;
  final bool selected;
  MainPageSection(
      {super.key, required this.selected, required this.sectionName});

  double borderWidth = 0.7;
  Color borderColor = Color(0xFF7A7A7A);
  Color backgroundColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    if (selected) {
      borderWidth = 0;
      borderColor = Color(0xFFFDCCC5);
      backgroundColor = Color(0xFFFDCCC5);
    }
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(width: borderWidth, color: borderColor),
          borderRadius: BorderRadius.circular(10)),
      height: 32,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Text(
            sectionName,
            style: TextStyle(
                fontFamily: 'Raleway-SemiBold',
                fontSize: 14,
                color: Color(0xFF7A7A7A)),
          ),
        ),
      ),
    );
  }
}
