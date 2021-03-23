import 'package:flutter/material.dart';
import 'package:labala/core/theme/theme.dart';
import 'package:labala/core/widgets/widgets.dart';

class NotificationListTile extends StatelessWidget {
  const NotificationListTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Spacing * 2),
      margin: EdgeInsets.only(bottom: Spacing * 2),
      decoration: BoxDecoration(
        boxShadow: [
          TBoxShadow.cardNormal(),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(Spacing),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(Spacing),
                ),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                ),
              ),
              HSpacing(Spacing * 2),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "16 Januari 2020",
                      style: CharacterStyle.smallest(),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipamet, consectetur adip",
                      style: CharacterStyle.normal(),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: Spacing * 2,
              bottom: Spacing,
            ),
            child: Divider(
              height: 1,
              color: Colors.grey,
            ),
          ),
          Text(
            "1,234 KG  >>  1,234 KG",
            style: CharacterStyle.normal(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipamet, consectetur adip",
            style: CharacterStyle.normal(
              color: Colors.grey,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
