import 'package:flutter/material.dart';
import 'package:beauty_app_ui/constants.dart';

class UpcomingServices extends StatelessWidget {
  const UpcomingServices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 30),
            Text(
              'Upcoming',
              style: kMainPageSectionNameStyle,
            ),
          ],
        ),
        SizedBox(height: 30),
        Container(
          height: 72,
          width: 315,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFF9F9FB)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Row(
              children: [
                Container(
                  width: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFFDCCC5),
                  ),
                  child: Center(
                    child: Text(
                      '19 \n Oct',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Raleway-Bold',
                          fontSize: 18,
                          color: Colors.white,
                          height: 1.3),
                    ),
                  ),
                ),
                SizedBox(width: 12.5),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6),
                    Text(
                      'Basic Pedicure',
                      style: TextStyle(
                          fontFamily: 'Raleway-SemiBold',
                          fontSize: 14,
                          height: 1),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'with Paty',
                      style: TextStyle(
                        fontFamily: 'Raleway-Medium',
                        fontSize: 12,
                        color: Color(0xFF7A7A7A),
                        height: 1,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Tuesday, 04:30 pm',
                      style: TextStyle(
                        fontFamily: 'Raleway-Bold',
                        fontSize: 16,
                        color: Color(0xFF001C33),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 31.1),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      print('EDIT BUTTON "TAPPED"');
                    },
                    child: Text(
                      'Edit',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Raleway-Bold',
                          fontSize: 14,
                          color: Colors.black,
                          height: 1.3),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
