import 'package:donate_me/Screens/OnBoardingScreen.dart';
import 'package:donate_me/Screens/sign_in_screen.dart';
import 'package:donate_me/Screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> namedRoutes = {
  // '/': (context) => const SplashScreen(),
  Onboardingscreen.routeName: (context) => const Onboardingscreen(),
  SignIn.routeName: (context) => SignIn(),
  SignUp.routeName: (context) => const SignUp(),
};
