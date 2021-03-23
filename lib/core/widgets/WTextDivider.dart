import 'package:flutter/material.dart';
import 'package:labala/core/theme/palette.dart';
import 'package:labala/core/theme/spacing.dart';
import 'package:labala/core/theme/text.dart';

enum TextDividerAlignment { center, left, right }

class WTextDivider extends StatelessWidget {
  final text;
  final TextDividerAlignment alignment;
  final EdgeInsets padding;

  const WTextDivider({
    Key key,
    this.text = "atau",
    this.alignment = TextDividerAlignment.center,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          alignment == TextDividerAlignment.left
              ? SizedBox()
              : Expanded(
                  child: Container(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ),
          Container(
            margin: EdgeInsets.fromLTRB(
                Spacing * (alignment == TextDividerAlignment.left ? 0 : 3),
                0,
                Spacing * (alignment == TextDividerAlignment.right ? 0 : 3),
                0),
            child: Text(
              text,
              style: CharacterStyle.small(fontWeight: FontWeight.w500, color: Colors.grey),
            ),
          ),
          alignment == TextDividerAlignment.right
              ? SizedBox()
              : Expanded(
                  child: Container(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
