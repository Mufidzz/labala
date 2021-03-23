import 'package:flutter/material.dart';
import 'package:labala/core/theme/theme.dart';
import 'package:labala/core/widgets/widgets.dart';

class VFeedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WSafeArea(
      child: Scaffold(
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
                    leading: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    actions: [
                      IconButton(
                        icon: Icon(
                          Icons.chat_bubble,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    title: Text(
                      "Detail Produk",
                      style: CharacterStyle.normal2(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: Spacing * 4,
                        right: Spacing * 4,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WFeedTile(
                              maxDescriptionLine: null,
                            ),
                            Text(
                              "Tukar Dengan",
                              style: CharacterStyle.normal(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Form(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WTextField(
                                    labelText: "Terbaru",
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: WTextField(
                                          labelText: "Jumlah",
                                        ),
                                      ),
                                      HSpacing(Spacing * 2),
                                      Expanded(
                                        child: Text(
                                          "1234 KG  >>  2000 KG",
                                          style: CharacterStyle.small(
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            VSpacing(Spacing * 2),
                            WButton(
                              backgroundColor: Palette.primary,
                              textColor: Colors.white,
                              text: "Tukar",
                              onTap: () {},
                            ),
                            VSpacing(Spacing * 4),
                            Text(
                              "Lainnya",
                              style: CharacterStyle.normal(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            VSpacing(Spacing),
                            WButton(
                              backgroundColor: Palette.primary,
                              isFilled: false,
                              textColor: Palette.primary,
                              text: "Chat Pengguna",
                              onTap: () {},
                              fontWeight: FontWeight.w500,
                            ),
                            VSpacing(Spacing * 2),
                            WButton(
                              backgroundColor: Palette.red,
                              isFilled: false,
                              textColor: Palette.red,
                              text: "Laporkan",
                              onTap: () {},
                              fontWeight: FontWeight.w500,
                            ),
                            VSpacing(Spacing * 4),
                          ],
                        ),
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
