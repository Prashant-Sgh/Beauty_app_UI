import 'package:flutter/material.dart';
import 'package:beauty_app_ui/components/booking_page_service_provider.dart';
import 'package:beauty_app_ui/components/select_day_area.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  static String id = 'bookingPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // SizedBox(height: 90),
              BookingPageServiceProvider(),
              SizedBox(height: 46),
              Divider(
                height: 1,
                thickness: 1,
                color: Color(0xFFEFEFEF),
              ),
              SizedBox(height: 23),
              Text(
                'Select Date & Time',
                style: TextStyle(fontFamily: 'Raleway-SemiBold', fontSize: 24),
              ),
              SizedBox(height: 32),
              SelectArea()
            ],
          ),
        ));
  }
}
