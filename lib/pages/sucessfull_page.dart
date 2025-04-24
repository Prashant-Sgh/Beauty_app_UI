import 'package:beauty_app_ui/components/booking_page_service_provider.dart';
import 'package:beauty_app_ui/pages/booking_page.dart';
import 'package:beauty_app_ui/pages/choose_service_page.dart';
import 'package:flutter/material.dart';
import 'package:beauty_app_ui/components/booking_btn.dart';

class SucessfullPage extends StatelessWidget {
  final String time = '04:30pm';

  const SucessfullPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const SizedBox(height: 135),
          Image.asset('assets/images/pinkIconWithHeart.png'),
          SizedBox(height: 72),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(
                    fontFamily: 'Raleway-SemiBold',
                    fontSize: 24,
                    color: Colors.black),
                children: [
                  TextSpan(text: 'Thank you for booking with'),
                  TextSpan(
                      text: ' MeTime',
                      style: TextStyle(fontFamily: 'Raleway-Bold'))
                ]),
          ),
          SizedBox(height: 73),
          Text(
            'Your booking details: ',
            style: TextStyle(
                fontFamily: 'Raleway-Medium',
                fontSize: 18,
                color: Color(0xFF7A7A7A)),
          ),
          SizedBox(height: 16),
          Text(
            'Tuesday, 19    $time',
            style: TextStyle(
                fontFamily: 'Raleway-Medium',
                fontSize: 18,
                color: Colors.black),
          ),
          SizedBox(height: 16),
          Text(
            'At The Gallery Salon',
            style: TextStyle(
                fontFamily: 'Raleway-Medium',
                fontSize: 18,
                color: Color(0xFF7A7A7A)),
          ),
          SizedBox(height: 16),
          Text(
            '8502 Preston Rd. Inglewood',
            style: TextStyle(
              fontFamily: 'Raleway-SemiBold',
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 85),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, BookingPage.id);
            },
            child: UIButton(text: 'Keep Booking'),
          ),
          SizedBox(height: 5),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ChooseService.id);
            },
            child: UIButton(
              text: 'Main Page',
              textColour: Color(0xFFFDCCC5),
              backgroundColour: Colors.transparent,
            ),
          )
        ],
      )),
    );
  }
}
