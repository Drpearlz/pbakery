import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PopularMenuWidget extends StatelessWidget {
  const PopularMenuWidget(
      {super.key,
      required this.image,
      required this.headtitle,
      required this.subtitle,
      required this.price});

  final String image, headtitle, subtitle, price;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      elevation: 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        ),
        height: 96.92,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(11, 12, 25, 4),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/puffw.png'),
              const Gap(21),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    headtitle,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.grey),
                  ),
                ],
              ),
              const Gap(123),
              Text(
                price,
                style: const TextStyle(
                    color: Color(0xffFEAD1D),
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<PopularMenuWidget> menuList = [
  const PopularMenuWidget(
      image: 'assets/images/puffw.png',
      headtitle: 'Puff Puff',
      subtitle: 'Nne\'s Table',
      price: '\$12'),
  const PopularMenuWidget(
      image: 'assets/images/puffw.png',
      headtitle: 'Puff Puff',
      subtitle: 'Nne\'s Table',
      price: '\$12'),
];
