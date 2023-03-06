import 'package:flutter/material.dart';

class OnBoardingCarousel extends StatelessWidget {
  const OnBoardingCarousel({super.key, required this.onChanged});

  final Function(int) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: PageView(
        onPageChanged: (currentPage) {
          onChanged(currentPage);
        },
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 20),
            height: 300,
            child: Image.asset('assets/on_boarding/img_1.png'),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 20),
            height: 300,
            child: Image.asset('assets/on_boarding/img_2.png'),
          ),
          Container(
            height: 300,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 20),
            child: Image.asset('assets/on_boarding/img_3.png'),
          ),
        ],
      ),
    );
  }
}
