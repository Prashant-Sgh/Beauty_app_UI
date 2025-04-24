import 'package:flutter/material.dart';
import 'package:beauty_app_ui/components/onboarding_buttons.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'MeTime',
            style: TextStyle(fontFamily: 'Raleway-Bold', fontSize: 19),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/BackgroundShape.png'),
                      fit: BoxFit.fitWidth)),
              child: Image.asset(
                  'assets/images/YoungWomanMeditatingInNatureSurroundedByButterflies.png'),
            ),
            SizedBox(height: 34.05),
            Text(
              textAlign: TextAlign.center,
              'Welcome to \n The Gallery Salon!',
              style: TextStyle(
                fontFamily: 'Raleway-Bold',
                fontSize: 32,
                height: 1.24,
              ),
            ),
            SizedBox(height: 19),
            Text(
              textAlign: TextAlign.center,
              'Follow the steps to schedule your \n next appointment with us.',
              style: TextStyle(
                  fontFamily: 'Raleway-Medium',
                  fontSize: 18,
                  color: Color(0xFF7A7A7A),
                  height: 1.24),
            ),
            SizedBox(height: 53.18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OnboardButton(
                  colour: Color(0xFFFFFFFF).withAlpha(0),
                  buttonText: 'Skip',
                  buttonTextColour: Color(0xFFFDCCC5),
                ),
                SizedBox(width: 15),
                OnboardButton(
                  colour: Color(0xFFFDCCC5),
                  buttonText: 'Start',
                  buttonTextColour: Color(0xFFFFFFFF),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
