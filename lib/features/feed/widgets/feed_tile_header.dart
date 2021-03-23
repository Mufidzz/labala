import 'package:flutter/material.dart';
import 'package:labala/core/theme/spacing.dart';
import 'package:labala/core/theme/text.dart';

class FeedTileHeader extends StatelessWidget {
  const FeedTileHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey,
        ),
        SizedBox(
          width: Spacing * 2,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Fullname",
              style: CharacterStyle.normal(
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "DD MMM YYYY, HH:MM",
              style: CharacterStyle.smallest(
                color: Colors.grey,
              ),
            ),
          ],
        )
      ],
    );
  }
}
