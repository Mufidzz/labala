import 'package:flutter/material.dart';
import 'package:labala/core/theme/spacing.dart';

class FeedShowcase extends StatelessWidget {
  const FeedShowcase({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(
            Spacing * 2,
          ),
        ),
      ),
    );
  }
}
