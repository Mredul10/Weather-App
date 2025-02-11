import 'package:flutter/material.dart';
import 'package:weather_app/utility/app_color.dart';
import 'package:weather_app/utility/text_style.dart';
import 'package:weather_app/screens/home_screen.dart'; // Import HomeScreen

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: AppColor.primaryGradient),
        child: Column(
          children: [
            SizedBox(
              height: 430,
              width: 430,
              child: Image.asset('assets/images/Group 3435.png'),
            ),
            Text('Weather ', style: AppTextStyle.headingLarge),
            Text('ForeCasts ', style: AppTextStyle.headingMedium),
            const SizedBox(height: 20),
            _button(context), // Pass context
          ],
        ),
      ),
    );
  }

  Widget _button(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      ),
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      },
      child: Text('Get Started', style: AppTextStyle.buttonText),
    );
  }
}
