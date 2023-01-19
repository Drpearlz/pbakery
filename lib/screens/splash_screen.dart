import 'package:flutter/material.dart';
import 'package:pbakery/constants/constants.dart';
import 'package:pbakery/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) {
          return const HomePage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(kSplashScreenBGColor),
      body: SafeArea(
        child: Center(
          child: Image.asset('assets/images/splashLogo.png'),
        ),
      ),
    );
  }
}
