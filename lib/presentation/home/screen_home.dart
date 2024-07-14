import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../common_widgets/movie_category.dart';
import '../common_widgets/movie_type_txt.dart';
import 'widgets/category_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hi, Buddy!',
          style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.w400),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 20),
            child: CircleAvatar(backgroundColor: Colors.grey),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: 1.5,
                  color: const Color(0xFF44454E),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                cursorColor: const Color(0xFF8C8C91),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: const Icon(CupertinoIcons.search, color: Colors.grey),
                  hintText: 'Search your movie',
                  hintStyle: TextStyle(
                    color: const Color(0xFF9597AA).withOpacity(0.6),
                  ),
                ),
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          const MovieTypeText(txt: 'Categories'),
          const CategoryWidget(),
          kHeight10,
          const MovieTypeText(txt: 'Movies'),
          const MovieCategory(),
          kHeight10,
          const MovieTypeText(txt: 'TV shows'),
          const MovieCategory(),
        ],
      ),
    );
  }
}
