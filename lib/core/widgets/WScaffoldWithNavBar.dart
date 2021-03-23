import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:labala/core/routes/routes.dart';
import 'package:labala/core/theme/theme.dart';

import 'WSpacing.dart';

class WScaffoldWithNavBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> key;
  final Widget endDrawer;
  final Widget body;
  final int activeIndex;
  final Color backgroundColor;
  const WScaffoldWithNavBar(
      {this.key,
      this.endDrawer,
      this.body,
      this.activeIndex,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Palette.primary,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          ExtendedNavigator.root.push(Routes.vProductAdd);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: Spacing * 3,
            horizontal: Spacing * 6,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Icon(
                  Icons.dashboard_outlined,
                  color: activeIndex == 0 ? Palette.primary : Palette.darker,
                ),
                onTap: () {
                  ExtendedNavigator.root.popAndPush(Routes.vDashboard);
                },
              ),
              InkWell(
                child: Icon(
                  Icons.notifications_none,
                  color: activeIndex == 1 ? Palette.primary : Palette.darker,
                ),
                onTap: () {
                  ExtendedNavigator.root.popAndPush(Routes.vNotification);
                },
              ),
              InkWell(
                child: Icon(
                  Icons.person_outline,
                  color: activeIndex == 2 ? Palette.primary : Palette.darker,
                ),
                onTap: () {
                  ExtendedNavigator.root.popAndPush(Routes.vProfile);
                },
              ),
              HSpacing(17.5)
            ],
          ),
        ),
      ),
      endDrawer: endDrawer,
      body: body,
    );
  }
}
