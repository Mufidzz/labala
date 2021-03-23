import 'package:flutter/material.dart';
import 'package:labala/core/theme/theme.dart';

class NotificationDetailInformationTileText extends StatelessWidget {
  final String title;
  final String description;
  final Color color;

  const NotificationDetailInformationTileText({
    Key key,
    @required this.title,
    @required this.description,
    this.color = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title",
          style: CharacterStyle.smallest(),
        ),
        Text(
          "$description",
          style: CharacterStyle.normal(
            color: color,
            fontWeight: FontWeight.w500,
          ),
        ),
        Divider(
          color: Colors.grey,
        )
      ],
    );
  }
}
