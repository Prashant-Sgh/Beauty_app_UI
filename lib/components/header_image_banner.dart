import 'package:flutter/material.dart';

class HeaderImageBanner extends StatelessWidget {
  const HeaderImageBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_page/mainPageTheGallerySalon.png',
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        const Positioned(
          top: 40,
          left: 16,
          child: Icon(Icons.arrow_back, color: Colors.white, size: 28),
        ),
        const Positioned(
          top: 40,
          left: 0,
          right: 0,
          child: Center(
            child: Text('MeTime',
                style: TextStyle(
                    fontFamily: 'Raleway-Bold',
                    color: Colors.black,
                    fontSize: 16)),
          ),
        ),
        const Positioned(
          bottom: 24,
          left: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'The Gallery Salon',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Raleway-Bold'),
              ),
              SizedBox(height: 4),
              Text(
                '8502 Preston Rd. Inglewood • \$\$',
                style: TextStyle(
                    color: Color(0xFFD1D1D1),
                    fontSize: 14,
                    fontFamily: 'Raleway'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
