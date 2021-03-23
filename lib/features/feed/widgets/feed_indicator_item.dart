import 'package:flutter/material.dart';
import 'package:labala/core/theme/palette.dart';
import 'package:labala/core/theme/spacing.dart';
import 'package:labala/core/theme/text.dart';

class FeedIndicatorItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final Color textColor;
  const FeedIndicatorItem({
    Key key,
    @required this.icon,
    @required this.text,
    this.iconColor = Palette.primary,
    this.textColor = Palette.primary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: Spacing * 4,
        ),
        SizedBox(
          width: Spacing,
        ),
        Text(
          "$text",
          style: CharacterStyle.small(),
        )
      ],
    );
  }
}
