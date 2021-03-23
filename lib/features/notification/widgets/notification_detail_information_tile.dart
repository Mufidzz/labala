import 'package:flutter/material.dart';
import 'package:labala/core/theme/theme.dart';
import 'package:labala/core/widgets/widgets.dart';

import 'notification_detail_information_tile_text.dart';

class NotificationDetailInformationTile extends StatelessWidget {
  const NotificationDetailInformationTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NotificationDetailInformationTileText(
          title: "Status",
          description: "Menunggu Konfirmasi",
          color: Palette.primary,
        ),
        NotificationDetailInformationTileText(
          title: "Waktu Transaksi",
          description: "17 Januari 2020",
        ),
        NotificationDetailInformationTileText(
          title: "Kode Transaksi",
          description: "TRX-00000001",
        ),
        Text(
          "Pengguna",
          style: CharacterStyle.smallest(),
        ),
        Container(
          padding: EdgeInsets.only(top: Spacing * 2),
          child: Row(
            children: [
              Container(
                width: 35,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                  ),
                ),
              ),
              HSpacing(Spacing * 2),
              Text(
                "Fullname Fullname",
                style: CharacterStyle.normal(
                  color: Palette.darker,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
