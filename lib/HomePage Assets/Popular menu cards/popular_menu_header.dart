import 'package:flutter/material.dart';

class PopularMenuHeader extends StatelessWidget {
  const PopularMenuHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Popular Menu',
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
