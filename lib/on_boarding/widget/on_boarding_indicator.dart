import 'package:flutter/material.dart';

class OnBoardingIndicator extends StatelessWidget {
  const OnBoardingIndicator({super.key, required this.currentPage});

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      // ignore: sort_child_properties_last
      children: [
        OnBoardingIndicatorItem(active: currentPage == 0),
        const SizedBox(
          width: 10,
        ),
        OnBoardingIndicatorItem(active: currentPage == 1),
        const SizedBox(
          width: 10,
        ),
        OnBoardingIndicatorItem(active: currentPage == 2)
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }
}

class OnBoardingIndicatorItem extends StatelessWidget {
  const OnBoardingIndicatorItem({super.key, required this.active});

  final bool active;

  @override
  Widget build(BuildContext context) {
    if (active) {
      return Container(
        width: 10,
        height: 10,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          color: Color(0x4DFCFCFC),
          borderRadius: BorderRadius.circular(10),
        ),
      );
    }

    return Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
