import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

  Widget _ratingRow(int stars, double percent) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          RatingBarIndicator(
            rating: stars.toDouble(),
            itemCount: stars,
            itemSize: 20,
            itemBuilder: (_, __) =>
                const Icon(Icons.star, color: Colors.orange),
          ),
          const SizedBox(width: 8),
          Text('${(percent * 100).round()}%'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Customer reviews',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Raleway-Bold',
                  color: Color(0xFF3F3F3F),
                  height: 1)),
          const SizedBox(height: 10),
          const Text('4.8 out of 5',
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Raleway-SemiBold', height: 1)),
          const Text('27 global ratings', style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 16),
          _ratingRow(5, 0.8),
          _ratingRow(4, 0.1),
          _ratingRow(3, 0.05),
          _ratingRow(2, 0.05),
          _ratingRow(1, 0.0),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
              side: const BorderSide(color: Colors.grey),
            ),
            child: const Text('Write a review', style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
