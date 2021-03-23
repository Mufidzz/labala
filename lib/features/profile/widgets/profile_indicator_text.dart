import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:labala/core/theme/theme.dart';

class ProfileIndicatorText extends StatelessWidget {
  final int count;
  final String title;

  const ProfileIndicatorText({
    Key key,
    @required this.count,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _getCountString(),
          style: CharacterStyle.normal2(
            color: Palette.darker,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          "$title",
          style: CharacterStyle.small(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  String _getCountString() {
    return NumberFormat.compact(locale: "en_US").format(this.count);
  }
}
