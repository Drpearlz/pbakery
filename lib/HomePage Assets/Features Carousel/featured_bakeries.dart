import 'package:flutter/material.dart';
import 'package:pbakery/HomePage%20Assets/Features%20Carousel/featured_bakeries_widget.dart';

class FeaturedBakeries extends StatelessWidget {
  const FeaturedBakeries({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: myList.map((data) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: FeaturedBakeriesWidget(
              title: data.title,
              image: data.image,
              subtite: data.subtite,
            ),
          );
        }).toList()),
      ),
    );
  }
}
