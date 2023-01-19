import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final List<String> profileSetting = [
    'Orders',
    'My Details',
    'Delivery Address',
    'Payment Method',
    'Promo Codes',
    'Notifications',
    'Help',
    'About',
  ];

  final List<IconData> profileSettingIcon = [
    Icons.shop,
    Icons.verified_user,
    Icons.location_on,
    Icons.card_giftcard_rounded,
    CupertinoIcons.chevron_down_circle_fill,
    Icons.notifications,
    Icons.help,
    Icons.info,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      maxRadius: 35,
                      foregroundImage:
                          AssetImage('assets/images/placeholder.png'),
                    ),
                    const SizedBox(width: 20.6),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Peggy Roxy',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(CupertinoIcons.pen)
                          ],
                        ),
                        const Text(
                          'jejelovesolutions@gmail.com',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(),
              Expanded(
                flex: 4,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: 8,
                  itemBuilder: (context, index) => ListTile(
                    leading: Icon(profileSettingIcon[index]),
                    title: Text(
                      profileSetting[index],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
              ),
              // const SizedBox(height: 10),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE2E2E2),
                    foregroundColor: const Color(0xFF53B175),
                    minimumSize: const Size(double.infinity, 70)),
                icon: const Icon(Icons.logout_rounded),
                label: const Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: [
                //     Icon(Icons.logout_rounded),
                //     Text(
                //       'Logout',
                //       textAlign: TextAlign.center,
                //     ),
                //   ],
                // ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
