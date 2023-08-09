import 'dart:developer';

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:hairsalon/View/BottomNavigatioBar/profile_screen.dart';
import 'package:hairsalon/View/BottomNavigatioBar/service_screen.dart';

import 'booking_screen.dart';
import 'home_screen.dart';

class BottomNavigationbarScreen extends StatefulWidget {
  const BottomNavigationbarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationbarScreen> createState() =>
      _BottomNavigationbarScreenState();
}

class _BottomNavigationbarScreenState extends State<BottomNavigationbarScreen> {
  final _pageController = PageController(initialPage: 0);

  /// Controller to handle bottom nav bar and also handles initial page
  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// widget list
  final List<Widget> bottomBarPages = [
    HomeScreen(),
    ServiceScreen(),
    BookingScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
              bottomBarPages.length, (index) => bottomBarPages[index]),
        ),
        extendBody: true,
        bottomNavigationBar: AnimatedNotchBottomBar(
          /// Provide NotchBottomBarController
          notchBottomBarController: _controller,
          color: Colors.black,
          showLabel: false,
          notchColor: Colors.white, showShadow: true,

          /// restart app if you change removeMargins
          removeMargins: false,
          bottomBarWidth: 500,
          durationInMilliSeconds: 300,
          bottomBarItems: [
            BottomBarItem(
              inActiveItem: Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
              activeItem: Icon(
                Icons.home_filled,
                color: Colors.black,
              ),
            ),
            const BottomBarItem(
              inActiveItem: Icon(
                Icons.chair_alt_sharp,
                color: Colors.white,
              ),
              activeItem: Icon(
                Icons.chair_alt_sharp,
                color: Colors.black,
              ),
            ),

            ///svg example
            // BottomBarItem(
            //   inActiveItem: SvgPicture.asset(
            //     'assets/search_icon.svg',
            //     color: Colors.blueGrey,
            //   ),
            //   activeItem: SvgPicture.asset(
            //     'assets/search_icon.svg',
            //     color: Colors.white,
            //   ),
            //   itemLabel: 'Page 3',
            // ),
            BottomBarItem(
              inActiveItem: Icon(
                Icons.app_registration_outlined,
                color: Colors.white,
              ),
              activeItem: Icon(
                Icons.app_registration_outlined,
                color: Colors.black,
              ),
            ),
            const BottomBarItem(
              inActiveItem: Icon(
                Icons.person,
                color: Colors.white,
              ),
              activeItem: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ],
          onTap: (index) {
            /// perform action on tab change and to update pages you can update pages without pages
            log('current selected index $index');
            _pageController.jumpToPage(index);
          },
        ));
  }
}
