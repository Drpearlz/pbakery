import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/constant.dart';

class OnboardingBottomWidget extends StatelessWidget {
  const OnboardingBottomWidget({
    Key? key,
    required PageController controller,
    this.onTap,
    required this.text,
    required this.width,
  })  : _controller = controller,
        super(key: key);

  final PageController _controller;
  final Function()? onTap;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      left: 20,
      bottom: 50,
      child: Padding(
        padding: const EdgeInsets.only(right: 50),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmoothPageIndicator(
                effect: const WormEffect(
                  spacing: 6,
                  dotHeight: 5,
                  dotWidth: 16,
                  dotColor: Colors.white54,
                  activeDotColor: Colors.white,
                ),
                controller: _controller,
                count: 3),
            SizedBox(width: width),
            GestureDetector(
              onTap: onTap,
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        text,
                        style:
                            const TextStyle(color: kPrimaryColor, fontSize: 16),
                      ),
                      SizedBox(width: 15),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: kPrimaryColor,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
