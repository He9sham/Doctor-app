import 'package:doctor/features/home/view/home_page.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

class NavigateBar extends StatefulWidget {
  const NavigateBar({super.key});

  @override
  State<NavigateBar> createState() => _NavigateBarState();
}

class _NavigateBarState extends State<NavigateBar> {
  int _selectedIndex = 0;

  List<Widget> tabItems = const [
    HomePage(),
    Center(child: Text("1")),
    Center(child: Text("2")),
    Center(child: Text("3")),
    Center(child: Text("4")),
  ];

  @override
  Widget build(BuildContext context) {
    double iconSize = MediaQuery.of(context).size.width < 600 ? 24 : 32;
    return Scaffold(
      body: Center(
        child: tabItems[_selectedIndex],
      ),
      bottomNavigationBar: SizedBox(
        height: 110,
        child: FlashyTabBar(
          selectedIndex: _selectedIndex,
          animationCurve: Curves.linear,
          iconSize: iconSize,
          showElevation: false,
          backgroundColor: Colors.transparent.withOpacity(0.2),
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            FlashyTabBarItem(
              title: const Text('Home'),
              icon: Icon(
                Icons.home,
                size: iconSize,
              ),
            ),
            FlashyTabBarItem(
              title: const Text('games'),
              icon: Icon(
                Icons.games,
                size: iconSize,
              ),
            ),
            FlashyTabBarItem(
              title: const Text('person'),
              icon: Icon(
                Icons.person,
                size: iconSize,
              ),
            ),
            FlashyTabBarItem(
              title: const Text('settings'),
              icon: Icon(
                Icons.settings,
                size: iconSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
