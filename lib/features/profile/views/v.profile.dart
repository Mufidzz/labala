import 'package:flutter/material.dart';
import 'package:labala/core/theme/theme.dart';
import 'package:labala/core/widgets/widgets.dart';
import 'package:labala/features/profile/widgets/profile_information_card.dart';
import 'package:labala/features/profile/widgets/profile_product_list.dart';

class VProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WSafeArea(
      child: WScaffoldWithNavBar(
        activeIndex: 2,
        body: Stack(
          children: [
            GreenDashboardBackground(),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppBar(
                    automaticallyImplyLeading: false,
                    actions: [
                      IconButton(
                        icon: Icon(
                          Icons.brightness_high_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    title: Text(
                      "User.ID",
                      style: CharacterStyle.normal2(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ProfileInformationCard(),
                          ProfileProductList()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
