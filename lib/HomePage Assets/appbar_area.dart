import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppbarArea extends StatelessWidget {
  const AppbarArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Pattern.png'),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 66, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 90,
              width: 245,
              child: Text(
                'Find Your Favorite Bakery',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 34.5,
                ),
              ),
            ),
            //const Gap(45.7),
            Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.71),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/healthy.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),

              //  const Icon(
              //Icons.notifications,
              // color: Color(0xff53E88B),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
