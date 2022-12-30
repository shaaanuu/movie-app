import 'package:flutter/material.dart';

import '../categories/screen_categories.dart';
import '../home/screen_home.dart';
import '../trending/screen_trending.dart';

class ScreenMain extends StatelessWidget {
  final ValueNotifier<int> btmnavbarNotifier = ValueNotifier(0);

  ScreenMain({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      ScreenHome(),
      ScreenCategories(),
      ScreenTrending(),
    ];

    List<NavigationDestination> navigationDestinations = const [
      NavigationDestination(
        icon: Icon(
          Icons.home_outlined,
          color: Color(0xFF546EE5),
        ),
        label: 'Home',
        selectedIcon: Icon(
          Icons.home,
          color: Color(0xFF546EE5),
        ),
      ),
      NavigationDestination(
        icon: Icon(
          Icons.category_outlined,
          color: Color(0xFF546EE5),
        ),
        label: 'Categories',
        selectedIcon: Icon(
          Icons.category,
          color: Color(0xFF546EE5),
        ),
      ),
      NavigationDestination(
        icon: Icon(
          Icons.trending_up_outlined,
          color: Color(0xFF546EE5),
        ),
        label: 'Trending',
        selectedIcon: Icon(
          Icons.trending_up,
          color: Color(0xFF546EE5),
        ),
      ),
    ];

    return ValueListenableBuilder(
      valueListenable: btmnavbarNotifier,
      builder: (context, int currentIndex, child) => Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: NavigationBar(
          destinations: navigationDestinations,
          selectedIndex: currentIndex,
          onDestinationSelected: (newIndex) =>
              btmnavbarNotifier.value = newIndex,
        ),
      ),
    );
  }
}
