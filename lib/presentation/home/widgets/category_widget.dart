import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  final List<String> categoryEmoji = const [
    '😱',
    '🥰',
    '🤪',
    '🤩',
  ];

  final List<String> categoryName = const [
    'Horror',
    'Romance',
    'Comedy',
    'Drama',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        4,
        (index) => Container(
          width: 70,
          height: 78,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.07),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                categoryEmoji[index],
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                categoryName[index],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
