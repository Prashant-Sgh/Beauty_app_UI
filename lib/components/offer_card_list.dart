import 'package:flutter/material.dart';

class OfferCardList extends StatelessWidget {
  const OfferCardList({super.key});

  Widget _offerCard(String title, String subtitle) {
    return Container(
      height: 61,
      // width: 117,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFCDCDCD)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/main_page/pinkStarShape.png'))),
                child: Center(
                  child: Text(
                    '%',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Raleway-Bold',
                        fontSize: 10),
                  ),
                ),
              ),
              SizedBox(width: 6),
              Text(title,
                  style: TextStyle(
                      fontFamily: 'Raleway-Bold', fontSize: 16, height: 1)),
            ],
          ),
          // const SizedBox(height: 4),
          Text(subtitle,
              style: const TextStyle(
                  color: Color(0xFF3F3F3F),
                  fontFamily: 'Raleway-Medium',
                  fontSize: 12,
                  height: 1)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Divider(
          height: 1,
          thickness: 1,
          color: Color(0xFFEAEAEA),
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 60,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            scrollDirection: Axis.horizontal,
            children: [
              _offerCard('10% off', 'use code FREE10'),
              _offerCard('30% off on Debit Card', 'No coupon required'),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Divider(
          height: 1,
          thickness: 1,
          color: Color(0xFFEAEAEA),
        ),
      ],
    );
  }
}
