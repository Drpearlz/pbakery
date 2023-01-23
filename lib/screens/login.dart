import 'package:flutter/material.dart';
import 'package:pbakery/constants/constant.dart';
import 'package:pbakery/screens/home_page.dart';
import '../components/background.dart';
import '../components/roundedbutton.dart';
import '../components/textformfield.dart';
import 'signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showText = true;
  void revealText() {
    setState(() {
      showText = !showText;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Background(
        child: Padding(
          padding: EdgeInsets.only(top: size.height * 0.1, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/foodlogo.png',
                ),
                const SizedBox(height: 80),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Log In',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text('Enter your email and password',
                      style: TextStyle(color: Colors.black54)),
                ),
                const SizedBox(height: 20),
                const TextFieldFormat(
                  text: 'Enter Address',
                  icon: Icons.check,
                  suffixColor: kPrimaryColor,
                ),
                const SizedBox(height: 30),
                TextFieldFormat(
                  onPressedIcon: revealText,
                  suffixColor: Colors.black54,
                  text: 'Password',
                  icon: showText ? Icons.visibility : Icons.visibility_off,
                  obscureText: showText,
                ),
                const SizedBox(height: 30),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: Text('Forgot Password?',
                      style: TextStyle(
                          fontWeight: FontWeight.w800, color: Colors.black54)),
                ),
                RoundedButton(
                  text: 'Log In',
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage())),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Dont\'t have an account?',
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.black87)),
                    const SizedBox(width: 2),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()));
                        });
                      },
                      child: const Text('Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: kPrimaryColor)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
