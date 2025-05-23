import 'package:crieya_works/intro_screens/intro_page_1.dart';
import 'package:crieya_works/intro_screens/intro_page_2.dart';
import 'package:crieya_works/intro_screens/intro_page_3.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

//import './login_page.dart';
import 'screens/welcome/welcome_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //controller to keep track of which page we are on
  final PageController _controller = PageController();

  //keep track of if we are on the last page or not

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            controller: _controller,
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip

                GestureDetector(
                  onTap: () {
                    //_controller.jumpToPage(2);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const WelcomeScreen();
                        },
                      ),
                    );
                  },
                  child: const Text('Skip'),
                ),

                //dot indicator
                SmoothPageIndicator(controller: _controller, count: 3),

                //next or done
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          // _controller.nextPage(
                          //   duration: const Duration(milliseconds: 500),
                          //   curve: Curves.easeIn,
                          // );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const WelcomeScreen();
                              },
                            ),
                          );
                        },
                        child: const Text('Done'),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: const Text('Next'),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
