import 'package:flutter/material.dart';

class MovieTypeText extends StatelessWidget {
  const MovieTypeText({
    super.key,
    required this.txt,
  });

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            txt,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/seeMore'),
            child: Text(
              'See more',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
