import 'package:flutter/material.dart';
import 'package:tenang_test/authentication/authentication.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ElevatedButton(
        onPressed: () {
          Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => const SignInScreen(),
            ),
          );
        },
        child: const Text('Out'),
      ),
    );
  }
}
