import 'package:flutter/material.dart';

class BookingPageServiceProvider extends StatelessWidget {
  const BookingPageServiceProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/BookingPageServiceProvider.png'),
        SizedBox(height: 6),
        Text(
          'Anna Smith',
          style: TextStyle(
              fontFamily: 'Raleway-SemiBold', fontSize: 24, height: 1),
        ),
        SizedBox(height: 3),
        Text(
          'Nail designer',
          style:
              TextStyle(fontFamily: 'Raleway-Medium', fontSize: 14, height: 1),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/StarFilled.png'),
            SizedBox(
              width: 3,
            ),
            Text(
              '5.0',
              style: TextStyle(fontFamily: 'Raleway-Medium', fontSize: 14),
            )
          ],
        )
      ],
    );
  }
}
