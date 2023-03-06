import 'package:flutter/material.dart';

class OnBoardingHeadline extends StatelessWidget {
  const OnBoardingHeadline({super.key, required this.controllerPage});

  final int controllerPage;

  @override
  Widget build(BuildContext context) {
    return HeadlineWidget(page: controllerPage);
  }
}

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget({super.key, required this.page});

  final int page;

  @override
  Widget build(BuildContext context) {
    if (page == 0) {
      return Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text(
            'Welcome to Alesha',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean '
              'consectetur in erat in interdum. Vestibulum a lorem turpis. '
              'Morbi blandit ullamcorper ultricies.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF727FA3),
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      );
    } else if (page == 1) {
      return Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text(
            'Find Best Doctors',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean '
              'consectetur in erat in interdum. Vestibulum a lorem turpis. '
              'Morbi blandit ullamcorper ultricies.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF727FA3),
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      );
    } else if (page == 2) {
      return Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text(
            'Get Fitness Trips',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean '
              'consectetur in erat in interdum. Vestibulum a lorem turpis. '
              'Morbi blandit ullamcorper ultricies.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF727FA3),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(
                  Color(0xFF4A80FF),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text('Continue'),
            ),
          ),
        ],
      );
    }
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const SizedBox(
          height: 100,
        ),
        const Text(
          'Welcome to Alesha',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean '
            'consectetur in erat in interdum. Vestibulum a lorem turpis. '
            'Morbi blandit ullamcorper ultricies. Suspendisse quam tortor, '
            'feugiat vel pharetra eget, fringilla vitae velit. Vivamus vel '
            'lectus diam.',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF727FA3),
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
