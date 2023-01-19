import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FeaturedBakeriesWidget extends StatelessWidget {
  const FeaturedBakeriesWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subtite});

  final String image;
  final String title;
  final String subtite;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163.76,
      height: 204.98,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xff53B175)),
        borderRadius: BorderRadius.circular(24.51),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(39.56, 16.07, 39.56, 0),
            child: Image.asset(
              image,
              height: 92,
              width: 92,
            ),
          ),
          const Gap(17.93),
          Text(
            title,
            style: const TextStyle(
                fontSize: 17.82, fontWeight: FontWeight.w700),
          ),
          const Gap(4.85),
          Text(
            subtite,
            style: const TextStyle(
                fontSize: 14.42,
                color: Colors.grey,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}

List<FeaturedBakeriesWidget> myList = [
  const FeaturedBakeriesWidget(
      image: 'assets/images/capitolhill.png',
      title: 'Capitol Hill Bakerey',
      subtite: '12 Mins'),
  const FeaturedBakeriesWidget(
      image: 'assets/images/Nnestable.png',
      title: 'Nne\'s Table',
      subtite: '10 Mins'),
  const FeaturedBakeriesWidget(
      image: 'assets/images/good food.png',
      title: 'Good Food',
      subtite: '11 Mins'),
  const FeaturedBakeriesWidget(
      image: 'assets/images/healthy.png',
      title: 'Healthy Bakeries',
      subtite: '1 Hr'),
  const FeaturedBakeriesWidget(
      image: 'assets/images/vegan.png',
      title: 'Veggie Pastries',
      subtite: '16 Mins'),
  const FeaturedBakeriesWidget(
      image: 'assets/images/oringo.png',
      title: 'Oringo\'s ',
      subtite: '5 Mins'),
  const FeaturedBakeriesWidget(
      image: 'assets/images/cake mania.png',
      title: 'Cake Mania',
      subtite: '12 Mins'),
  const FeaturedBakeriesWidget(
      image: 'assets/images/steve bakery.png',
      title: 'Steve Bakery',
      subtite: '12 Mins'),
];
