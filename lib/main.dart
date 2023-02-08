import 'package:flutter/material.dart';
import 'package:pbakery/screens/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pbakery/screens/onboarding_screens.dart';
import 'package:pbakery/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.sourceSansPro().fontFamily),
      debugShowCheckedModeBanner: false,
      title: 'Pearlz Bakery',
      home: const SplashScreen(),
      // home: OnboardingScreen(),
      // home: const LoginPage(),
    );
  }
}
