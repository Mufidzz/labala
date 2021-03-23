import 'package:flutter/material.dart';
import 'package:labala/core/theme/theme.dart';
import 'package:labala/core/widgets/widgets.dart';
import 'package:labala/features/notification/widgets/notification_detail_information_tile.dart';

class VNotificationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WSafeArea(
      disableImage: true,
      child: Scaffold(
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
                "Detail",
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            TBoxShadow.cardNormal(),
                          ],
                          borderRadius: BorderRadius.circular(Spacing),
                        ),
                        width: double.infinity,
                        padding: EdgeInsets.all(Spacing * 2),
                        child: NotificationDetailInformationTile(),
                      ),
                      VSpacing(Spacing * 3),
                      WButton(
                        backgroundColor: Palette.primary,
                        textColor: Palette.primary,
                        text: "Chat Pengguna",
                        onTap: () {},
                        isFilled: false,
                      ),
                      VSpacing(Spacing * 3),
                      Text(
                        "Detail Produk",
                        style: CharacterStyle.normal2(
                          color: Palette.darker,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      VSpacing(Spacing * 2),
                      WFeedTile(),
                      VSpacing(Spacing * 2),
                      Text(
                        "Aksi",
                        style: CharacterStyle.normal2(
                          color: Palette.darker,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      VSpacing(Spacing * 2),
                      WButton(
                        backgroundColor: Palette.red,
                        textColor: Palette.red,
                        text: "Tolak",
                        onTap: () {},
                        isFilled: false,
                      ),
                      VSpacing(Spacing * 2),
                      WButton(
                        backgroundColor: Palette.primary,
                        textColor: Colors.white,
                        text: "Terima",
                        onTap: () {},
                      ),
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
