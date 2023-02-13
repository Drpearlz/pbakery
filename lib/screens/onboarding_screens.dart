import 'package:flutter/material.dart';
import 'package:pbakery/screens/signup.dart';
import '../components/onboarding_bottom_widget.dart';
import '../components/onboardingpage.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({
    super.key,
    this.imageName,
    this.text1,
    this.text2,
  });

  final String? imageName;
  final String? text1;
  final String? text2;

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int? currentPage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: no_leading_underscores_for_local_identifiers
    final _controller = PageController();

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
            controller: _controller,
            children: [
              OnboardingPage(
                imageName: 'image6',
                text1: 'Get your Orders delivered',
                text2:
                    'Skip long wait times, by booking ahead to see a health professional in Nigeria.',
                child: GestureDetector(
                  onTap: () {
                    _controller.animateToPage(2,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Skip',
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ),
                ),
              ),
              OnboardingPage(
                imageName: 'image5',
                text1: 'Finest Local sourced Ingredients',
                text2:
                    'Bakeries used locally sourced and ethically fine ingredients',
                child: GestureDetector(
                  onTap: () {
                    _controller.animateToPage(2,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeIn);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Skip',
                      // textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ),
                ),
              ),
              const OnboardingPage(
                  imageName: 'image4',
                  text1: 'Order Baked Goods online',
                  text2:
                      'Skip long wait times, by booking ahead to see a health professional in Nigeria.'),
            ],
          ),
          OnboardingBottomWidget(
            width: currentPage != 2 ? size.width * 0.44 : size.width * 0.34,
            text: currentPage != 2 ? 'Next' : 'Get started',
            controller: _controller,
            onTap: () => currentPage != 2
                ? _controller.nextPage(
                    duration: const Duration(seconds: 1), curve: Curves.ease)
                : Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SignupPage();
                  })),
          ),
        ],
      ),
    );
  }
}
