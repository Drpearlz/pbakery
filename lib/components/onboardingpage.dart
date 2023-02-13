import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    Key? key,
    required this.imageName,
    required this.text1,
    required this.text2,
    this.child,
  }) : super(key: key);

  final String? imageName;
  final String? text1;
  final String? text2;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/$imageName.png'))),
      child: Stack(
        children: [
          const Positioned(
              top: 54,
              right: 24,
              child: Image(image: AssetImage('assets/images/highlogo.png'))),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.transparent,
                      Color(0x0f53b175),
                      Color(0xFF53B175),
                      Color(0xFF53B175),
                    ]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment(0, 0),
              margin: EdgeInsets.only(top: size.height * 0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text1!,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 28, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      text2!,
                      // textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1),
                    child: child,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
