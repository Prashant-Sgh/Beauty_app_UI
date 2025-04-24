import 'package:flutter/material.dart';
import 'package:beauty_app_ui/constants.dart';

class MainPageServiceCard extends StatelessWidget {
  final String imagePath;
  final String service;
  final String time;
  final String price;
  const MainPageServiceCard(
      {super.key,
      required this.imagePath,
      required this.service,
      required this.time,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 181,
      width: 157,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Color(0xFFF9F9FB)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 7.41),
                  Text(
                    service,
                    style: TextStyle(
                        fontFamily: 'Raleway-SemiBold',
                        fontSize: 16,
                        color: kSecondary,
                        height: 1.35),
                  ),
                  SizedBox(height: 7),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: kStroke,
                        size: 16.0,
                      ),
                      SizedBox(width: 2),
                      Text(
                        time,
                        style: TextStyle(
                            fontFamily: 'Raleway-SemiBold',
                            fontSize: 14,
                            color: kStroke,
                            height: 1),
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    price,
                    style: TextStyle(
                        fontFamily: 'Raleway-Bold',
                        fontSize: 16,
                        color: kSecondary,
                        height: 1.6),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
