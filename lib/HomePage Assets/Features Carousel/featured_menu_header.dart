import 'package:flutter/material.dart';

class FeaturedMenuHeader extends StatelessWidget {
  const FeaturedMenuHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Featured Bakeries',
          style: TextStyle(fontSize: 16.71, fontWeight: FontWeight.w700),
        ),
        Text(
          'See all',
          style: TextStyle(
            fontSize: 13.36,
            fontWeight: FontWeight.w700,
            color: Color(0xffFF7C32),
          ),
        ),
      ],
    );
  }
}
