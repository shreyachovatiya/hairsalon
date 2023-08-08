import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingScreen1 extends StatefulWidget {
  const OnBoardingScreen1({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen1> createState() => _OnBoardingScreen1State();
}

class _OnBoardingScreen1State extends State<OnBoardingScreen1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    print(size);
    return Scaffold(
      body: Column(
        children: [
          LiquidSwipe(
              slideIconWidget: Padding(
                padding: const EdgeInsets.only(top: 600),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 30,
                ),
              ),
              waveType: WaveType.circularReveal,
              fullTransitionValue: 900,
              enableSideReveal: true,
              // enableLoop: true,
              // ignoreUserGestureWhileAnimating: true,
              onPageChangeCallback: (activePageIndex) {},
              positionSlideIcon: 0.03,
              pages: [
                Column(
                  children: [
                    Container(
                      height: height * 1,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/onboarding1.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: height * 1,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/onboarding2.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ])
        ],
      ),
    );
  }
}
