import 'package:flutter/material.dart';
import 'package:labala/core/theme/theme.dart';
import 'package:labala/core/widgets/widgets.dart';

class WIconedText extends StatelessWidget {
  const WIconedText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.filter_alt,
          color: Palette.primary,
        ),
        HSpacing(Spacing * 2),
        Text(
          "Filter",
          style: CharacterStyle.normal2(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
