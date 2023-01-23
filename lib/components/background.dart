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
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/login-signup-bg.png')),
      ),
      child: child,
    );
  }
}

// Stack(
//         children: [
//           const Positioned(
//             top: 0,
//             child: Image(
//               image: AssetImage('images/Rectangle17.png'),
//             ),
//           ),
//           const Positioned(
//             bottom: 0,
//             child: Image(
//               image: AssetImage('images/Rectangle16.png'),
//             ),
//           ),
//           child!,
//         ],
//       ),