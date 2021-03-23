import 'package:flutter/material.dart';
import 'package:labala/core/theme/spacing.dart';
import 'package:labala/core/widgets/WSpacing.dart';
import 'package:labala/core/widgets/widgets.dart';

class VCFeed extends StatelessWidget {
  const VCFeed({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WFeedTile(),
        WFeedTile(),
        WFeedTile(),
        WFeedTile(),
        WFeedTile(),
        VSpacing(Spacing * 6)
      ],
    );
  }
}
