import 'package:flutter/material.dart';
import 'package:labala/core/theme/spacing.dart';
import 'package:labala/core/theme/text.dart';

class FeedSelectorText extends StatelessWidget {
  final String text;
  final bool active;
  const FeedSelectorText({
    Key key,
    @required this.text,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        Spacing * 2,
        Spacing,
        Spacing * 2,
        Spacing,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: active ? Colors.white : Colors.transparent,
            width: 2,
          ),
        ),
      ),
      child: Text(
        text,
        style: CharacterStyle.normal(
          color: Colors.white,
        ),
      ),
    );
  }
}
