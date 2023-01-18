import 'package:flutter/material.dart';
import 'package:pbakery/components/background.dart';
import 'package:pbakery/screens/login.dart';

import '../components/roundedbutton.dart';
import '../components/textformfield.dart';
import '../constants/constant.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                  'images/foodlogo.png',
                ),
                const SizedBox(height: 80),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text('Enter your personal info here to continue',
                      style: TextStyle(color: Colors.black54)),
                ),
                const SizedBox(height: 20),
                const TextFieldFormat(
                  text: 'Username',
                  icon: Icons.check,
                  color: Colors.green,
                ),
                const SizedBox(height: 20),
                const TextFieldFormat(
                  text: 'Enter Address',
                  icon: Icons.check,
                  color: Colors.green,
                ),
                const SizedBox(height: 30),
                const TextFieldFormat(
                  text: 'Password',
                  icon: Icons.remove_red_eye_outlined,
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: 'By continuing you agree to our ',
                      style: TextStyle(
                        color: Colors.black54,
                      )),
                  TextSpan(
                    text: 'Terms of Service ',
                    style: TextStyle(
                      color: Color(0xFF53B175),
                    ),
                  ),
                  TextSpan(
                      text: 'and ',
                      style: TextStyle(
                        color: Colors.black54,
                      )),
                  TextSpan(
                    text: 'Privacy Policy.',
                    style: TextStyle(
                      color: Color(0xFF53B175),
                    ),
                  )
                ])),
                const RoundedButton(
                  text: 'Sign Up',
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?',
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
                                  builder: (context) => LoginPage()));
                        });
                      },
                      child: const Text('Log In',
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
