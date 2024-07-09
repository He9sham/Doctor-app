import 'package:doctor/features/home/view/home_page.dart';
import 'package:doctor/features/profile_user/view/profile_view.dart';
import 'package:doctor/features/setting/view/setting_view.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavigateBar extends StatefulWidget {
  const NavigateBar({super.key});

  @override
  State<NavigateBar> createState() => _NavigateBarState();
}

class _NavigateBarState extends State<NavigateBar> {
  int index = 0;
  final PageController _pageController = PageController();
  final screens = [
    const HomePage(
        // loginResponse: LoginResponse(),
        ),
    const ProfileView(),
    const SettingView(),
  ];

  // Custom function to determine transparency based on the current page index
  double getNavBarOpacity(int currentIndex) {
    // Example: Return different opacity levels for different pages
    switch (currentIndex) {
      case 0:
        return 0.35; // Home page
      case 1:
        return 0.35; // Games page
      case 2:
        return 0.35; // Profile page
      default:
        return 0.35; // Default opacity
    }
  }

  @override
  Widget build(BuildContext context) {
    var mediaquerydata = MediaQuery.of(context);
    // Calculate the available height for the content
    double availableHeight =
        mediaquerydata.size.height - mediaquerydata.viewInsets.bottom;

    double screenWidthPercentage =
        mediaquerydata.size.width > 600 ? 0.20 : 0.06;
    double iconSize = screenWidthPercentage * mediaquerydata.size.width;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: screens,
            onPageChanged: (index) {
              setState(() {
                this.index = index;
              });
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              // Adds padding at the bottom to account for the keyboard space
              padding: EdgeInsets.only(
                  bottom: mediaquerydata.viewInsets.bottom +
                      5), // Adjust the padding here
              child: SizedBox(
                height: availableHeight * 0.161,
                width: double.infinity,
                child: DotNavigationBar(
                  backgroundColor:
                      const Color.fromARGB(255, 222, 217, 217).withOpacity(0.7),
                  paddingR: EdgeInsets
                      .zero, // Remove right padding paddingL: EdgeInsets.zero, // Remove left padding
                  items: [
                    DotNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                        size: iconSize,
                      ),
                      selectedColor: const Color(0xff41AC78),
                    ),
                    DotNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                        size: iconSize,
                      ),
                      selectedColor: const Color(0xffAB70DF),
                    ),
                    DotNavigationBarItem(
                      icon: Icon(
                        Icons.settings,
                        size: iconSize,
                      ),
                      selectedColor: const Color(0xffFFB800),
                    ),
                  ],
                  onTap: (index) {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  currentIndex: index,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
