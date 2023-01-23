import 'package:flutter/material.dart';
import 'package:pbakery/constants/constant.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../components/onboarding_bottom_widget.dart';
import '../components/onboardingpage.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    super.key,
    this.imageName,
    this.text1,
    this.text2,
  });

  final String? imageName;
  final String? text1;
  final String? text2;

  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              OnboardingPage(
                  imageName: 'image6',
                  text1: 'Get your Orders delivered',
                  text2:
                      'Skip long wait times, by booking ahead to see a health professional in Nigeria.'),
              OnboardingPage(
                  imageName: 'image5',
                  text1: 'Finest Local sourced Ingredients',
                  text2:
                      'Bakeries used locally sourced and ethically fine ingredients'),
              OnboardingPage(
                  imageName: 'image4',
                  text1: 'Order Baked Goods online',
                  text2:
                      'Skip long wait times, by booking ahead to see a health professional in Nigeria.'),
            ],
          ),
          OnboardingBottomWidget(controller: _controller),
        ],
      ),
    );
  }
}
