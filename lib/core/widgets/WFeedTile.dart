import 'package:flutter/material.dart';
import 'package:labala/core/theme/spacing.dart';
import 'package:labala/core/theme/text.dart';
import 'package:labala/core/widgets/WSpacing.dart';
import 'package:labala/features/feed/widgets/feed_showcase.dart';

import '../../features/feed/widgets/feed_indicator.dart';
import '../../features/feed/widgets/feed_tile_header.dart';

class WFeedTile extends StatelessWidget {
  final bool disableUserInformation;
  final int maxDescriptionLine;
  const WFeedTile({
    Key key,
    this.disableUserInformation = false,
    this.maxDescriptionLine = 3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Spacing),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(2, 2),
            ),
          ]),
      padding: EdgeInsets.all(
        Spacing * 2,
      ),
      margin: EdgeInsets.only(bottom: Spacing * 2),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          disableUserInformation
              ? SizedBox()
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: FeedTileHeader(),
                ),
          SizedBox(
            height: disableUserInformation ? 0 : Spacing * 2,
          ),
          FeedShowcase(),
          SizedBox(
            height: Spacing * 2,
          ),
          FeedIndicator(),
          VSpacing(Spacing * 2),
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  style: CharacterStyle.normal(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              VSpacing(Spacing),
              SingleChildScrollView(
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas scelerisque nunc sed purus dapibus finibus. Nulla vel dolor arcu. Vivamus convallis scelerisque nunc, ultrices auctor felis blandit a. Praesent vel efficitur metus, ut consequat dui. Curabitur ut felis in urna hendrerit semper. Fusce et elementum urna. Nunc hendrerit bibendum magna eget placerat. Nullam dictum odio vitae neque bibendum venenatis. Vestibulum nec egestas est. Aenean rutrum est vel risus laoreet laoreet.",
                  style: CharacterStyle.smallest(),
                  maxLines: maxDescriptionLine,
                  overflow: TextOverflow.fade,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
