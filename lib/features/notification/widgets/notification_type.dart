import 'package:flutter/material.dart';
import 'package:labala/core/theme/theme.dart';
import 'package:labala/core/widgets/widgets.dart';

import 'notification_type_tile.dart';

class NotificationType extends StatelessWidget {
  final title;
  final List<NotificationTypeTile> child;

  const NotificationType({
    Key key,
    @required this.title,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title",
          style: CharacterStyle.normal2(
            fontWeight: FontWeight.w500,
          ),
        ),
        VSpacing(Spacing * 2),
        Column(
          children: child,
        ),
        VSpacing(Spacing * 2),
      ],
    );
  }
}
