import 'package:flutter/material.dart';

class ActionIconRow extends StatelessWidget {
  const ActionIconRow({super.key});

  Widget _iconLabel(IconData icon, String label) {
    return Column(
      children: [
        Container(
            height: 51,
            width: 51,
            decoration: BoxDecoration(
                color: Color(0xFFF9F9FB),
                borderRadius: BorderRadius.circular(10)),
            child: Icon(icon, size: 28, color: Colors.black54)),
        const SizedBox(height: 6),
        Text(label,
            style: const TextStyle(
                fontFamily: 'Raleway-SemiBold',
                fontSize: 14,
                color: Color(0xFF3F3F3F)))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _iconLabel(Icons.phone, 'Call'),
          SizedBox(width: 27),
          _iconLabel(Icons.message, 'Message'),
          SizedBox(width: 27),
          _iconLabel(Icons.location_on, 'Directions'),
          SizedBox(width: 27),
          _iconLabel(Icons.share, 'Share'),
        ],
      ),
    );
  }
}
