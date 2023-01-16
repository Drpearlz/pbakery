import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget? child;

  const Background({Key? key, this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: [
          const Positioned(
            top: 0,
            child: Image(
              image: AssetImage('images/Rectangle17.png'),
            ),
          ),
          const Positioned(
            bottom: 0,
            child: Image(
              image: AssetImage('images/Rectangle16.png'),
            ),
          ),
          child!,
        ],
      ),
    );
  }
}
