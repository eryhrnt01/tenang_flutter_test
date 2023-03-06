import 'package:flutter/material.dart';

import '../widget/on_boarding_carousel.dart';
import '../widget/on_boarding_headline.dart';
import '../widget/on_boarding_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0x994A80FF),
                Color(0xFF3462FF),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 375,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: OnBoardingHeadline(
                  controllerPage: _currentPage,
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Stack(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    // color: Colors.white,
                    child: OnBoardingCarousel(
                      onChanged: (currentPage) {
                        setState(
                          () {
                            _currentPage = currentPage;
                          },
                        );
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: const EdgeInsets.only(
                      right: 20,
                    ),
                    height: 300,
                    //color: Colors.red,
                    child: OnBoardingIndicator(
                      currentPage: _currentPage,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
