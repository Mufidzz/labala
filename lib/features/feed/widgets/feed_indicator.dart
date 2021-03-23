import 'package:flutter/material.dart';
import 'package:labala/core/theme/spacing.dart';

import 'feed_indicator_item.dart';

class FeedIndicator extends StatelessWidget {
  const FeedIndicator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FeedIndicatorItem(
          icon: Icons.favorite_border,
          text: "9999+ Likes",
        ),
        SizedBox(
          width: Spacing * 2,
        ),
        FeedIndicatorItem(
          icon: Icons.outlined_flag,
          text: "9999+ Sukses",
        ),
      ],
    );
  }
}
