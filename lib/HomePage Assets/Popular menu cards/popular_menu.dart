import 'package:flutter/material.dart';
import 'package:pbakery/HomePage%20Assets/Popular%20menu%20cards/popular_menu_widget.dart';

class PopularMenu extends StatelessWidget {
  const PopularMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
          children: menuList.map((data) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: PopularMenuWidget(
            headtitle: data.headtitle,
            image: data.image,
            subtitle: data.subtitle,
            price: data.price,
          ),
        );
      }).toList()),
    );
  }
}
