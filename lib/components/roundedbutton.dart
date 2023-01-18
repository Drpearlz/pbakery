import 'package:flutter/material.dart';
import 'package:pbakery/screens/signup.dart';

import '../constants/constant.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key, this.text, this.onTap});

  final String? text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Center(
              child: Text(
            '$text',
            style: const TextStyle(color: Colors.white, fontSize: 18),
          )),
        ),
      ),
    );
  }
}
