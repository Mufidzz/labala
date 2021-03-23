import 'package:flutter/material.dart';
import 'package:labala/core/theme/theme.dart';

class NotificationTypeTile extends StatelessWidget {
  final String title;
  final String description;
  final int maxLines;
  const NotificationTypeTile({
    Key key,
    @required this.title,
    @required this.description,
    this.maxLines = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Spacing * 2),
      margin: EdgeInsets.only(bottom: Spacing * 2),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Spacing * 2),
        color: Colors.white,
        boxShadow: [
          TBoxShadow.cardNormal(),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$title",
            style: CharacterStyle.normal(),
          ),
          Text(
            "$description",
            style: CharacterStyle.smallest(
              color: Colors.grey,
            ),
            maxLines: maxLines,
          ),
        ],
      ),
    );
  }
}
