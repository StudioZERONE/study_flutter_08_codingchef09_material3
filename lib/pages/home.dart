import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Home page is selected!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 350,
              width: 450,
              child: Image.asset(
                  'https://static8.lottiefiles.com/images/v3/industry-standard/01_ramen_character.gif'),
            ),
          ],
        ),
      ),
    );
  }
}
