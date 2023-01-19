import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 382,
          height: 167,
          decoration: BoxDecoration(
            color: const Color(0xff53E88B),
            borderRadius: BorderRadius.circular(17.82),
            image: const DecorationImage(
                image: AssetImage('assets/images/Image.png'),
                fit: BoxFit.cover),
          ),
        ),
        const Positioned(
          top: 33,
          right: 13.86,
          child: SizedBox(
            width: 166,
            child: Text(
              'Special Deal For October',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 33,
          right: 84,
          child: MaterialButton(
            height: 35,
            minWidth: 96,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            elevation: 0,
            color: Colors.white,
            child: const Text(
              'Buy Now',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                color: Color(0xff15be77),
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
