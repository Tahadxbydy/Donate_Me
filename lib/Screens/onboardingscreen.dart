// ignore: file_names
import 'package:donate_me/constants/constants.dart';
import 'package:donate_me/constants/themes.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});
  static const routeName = 'OnboardingScreen';
  @override
  // ignore: library_private_types_in_public_api
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<Onboardingscreen> {
  final PageController _controller = PageController(initialPage: 0);

  int _currentPage = 0;

  final List<OnboardingItem> _onboardingItems = [
    OnboardingItem(
      image: 'assets/onboard1.png',
      title: 'Bless Others',
      description:
          'Donateme is online blooddonation platform. its has into the 50k+ Users, you can donate & accept blood through Donateme.',
    ),
    OnboardingItem(
      image: 'assets/onboard2.png',
      title: 'Save Life',
      description:
          'Donateme is online blood donation store. Our aim is to save life.',
    ),
    OnboardingItem(
      image: 'assets/onboard3.png',
      title: 'Donate Blood',
      description:
          'Let’s get started with first Pakistan Blood Donation Application.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: _onboardingItems.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return OnboardingPage(
                item: _onboardingItems[index],
              );
            },
          ),
          Positioned(
            left: 16.0,
            bottom: 16.0,
            child: TextButton(
                onPressed: () {
                  // _navigateToHomeScreen();
                },
                child: const Text("Skip")),
          ),
          Positioned(
            right: 16.0,
            bottom: 16.0,
            child: TextButton(
              onPressed: () {
                if (_currentPage < _onboardingItems.length - 1) {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  // _navigateToHomeScreen();
                }
              },
              child: Text(
                _currentPage < _onboardingItems.length - 1
                    ? 'Next'
                    : 'Get Started',
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height / 40,
            child: DotsIndicator(
              dotsCount: _onboardingItems.length,
              position: _currentPage.toDouble().toInt(), // Convert to int here
              decorator: DotsDecorator(
                activeColor: kPrimaryColor,
                color: const Color(0xffD1D3D9),
                size: const Size.square(8.0),
                activeSize: const Size(8.0, 8.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // void _navigateToHomeScreen() {
  //   // Replace this with your navigation logic to the home screen or landing page
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(builder: (context) => signin()),
  //   );
  // }
}

class OnboardingItem {
  final String image;
  final String title;
  final String description;

  OnboardingItem({
    required this.image,
    required this.title,
    required this.description,
  });
}

class OnboardingPage extends StatelessWidget {
  final OnboardingItem item;

  const OnboardingPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          item.image,
          height: 200.0,
          width: 200.0,
        ),
        sizedBox,
        Text(
          item.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        sizedBox,
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.66,
          child: Text(
            item.description,
            style: Theme.of(context).textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
