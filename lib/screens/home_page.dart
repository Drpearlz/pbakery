import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pbakery/HomePage%20Assets/Popular%20menu%20cards/popular_menu.dart';
import '../HomePage Assets/Features Carousel/featured_bakeries.dart';
import '../HomePage Assets/Features Carousel/featured_menu_header.dart';
import '../HomePage Assets/appbar_area.dart';
import '../HomePage Assets/discount_banner.dart';
import '../HomePage Assets/search_bar_area.dart';
import '../HomePage Assets/Popular menu cards/popular_menu_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.58),
          child: ListView(
            children: const [
              AppbarArea(),
              Gap(19.71),
              SearchBarArea(),
              Gap(24.5),
              DiscountBanner(),
              Gap(28),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 44.38, 0),
                child: FeaturedMenuHeader(),
              ),
              Gap(21.45),
              FeaturedBakeries(),
              Gap(22.28),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 44.38, 0),
                child: PopularMenuHeader(),
              ),
              Gap(21.45),
              PopularMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
