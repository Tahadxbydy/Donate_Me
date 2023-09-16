import 'package:donate_me/Screens/OnBoardingScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  Future<void> navigateToNextScreen() async {
    // Wait for 3 seconds
    await Future.delayed(const Duration(seconds: 5));

    if (!context.mounted) return;
    Navigator.pushReplacementNamed(context, Onboardingscreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(
          image: const AssetImage("assets/splash.png"),
          width: MediaQuery.of(context).size.width / 2.8,
        ),
      ),
    );
  }
}
