import 'package:flutter/material.dart';
import 'package:labala/core/theme/theme.dart';
import 'package:labala/core/widgets/widgets.dart';
import 'package:labala/features/notification/widgets/my_request_notification_type.dart';
import 'package:labala/features/notification/widgets/other_person_request_notification_type.dart';

class VNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WSafeArea(
      disableImage: true,
      child: WScaffoldWithNavBar(
        activeIndex: 1,
        backgroundColor: Palette.background,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Palette.darker,
                ),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.chat_bubble,
                    color: Palette.darker,
                  ),
                  onPressed: () {},
                ),
              ],
              backgroundColor: Colors.white,
              title: Text(
                "Notifikasi",
                style: CharacterStyle.normal2(
                  color: Palette.darker,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: Spacing * 4,
                    right: Spacing * 4,
                    top: Spacing * 4,
                  ),
                  child: Column(
                    children: [
                      MyRequestNotificationType(),
                      OtherPersonRequestNotificationType(),
                      VSpacing(Spacing * 4),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
