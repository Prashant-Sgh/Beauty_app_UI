import 'package:beauty_app_ui/components/booking_page_service_provider.dart';
import 'package:flutter/material.dart';
import 'pages/onboarding_page.dart';
import 'pages/booking_page.dart';
import 'pages/choose_service_page.dart';
import 'package:beauty_app_ui/pages/sucessfull_page.dart';
import 'package:beauty_app_ui/pages/main_page.dart';
import 'pages/main_page_profile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light(),
    // home: MyApp(),
    initialRoute: MainPageProfile.id,
    routes: {
      BookingPage.id: (context) => BookingPage(),
      ChooseService.id: (context) => ChooseService(),
      MainPage.id: (context) => MainPage(userName: 'Carlo'),
      MainPageProfile.id: (context) => MainPageProfile()
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MainPageProfile();
  }
}
