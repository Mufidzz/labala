import 'package:flutter/material.dart';
import 'package:labala/core/theme/spacing.dart';
import 'package:labala/features/feed/widgets/feed_selector_text.dart';

enum DashboardViewComponent {
  Feed,
  Explore,
}

class FeedSelector extends StatefulWidget {
  final Function onTap;

  const FeedSelector({
    Key key,
    this.onTap,
  }) : super(key: key);

  @override
  _FeedSelectorState createState() => _FeedSelectorState();
}

class _FeedSelectorState extends State<FeedSelector> {
  DashboardViewComponent activeDashboardView = DashboardViewComponent.Feed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: Spacing * 4,
        right: Spacing * 4,
        bottom: Spacing * 4,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            InkWell(
              child: FeedSelectorText(
                text: "Feed",
                active: activeDashboardView == DashboardViewComponent.Feed,
              ),
              onTap: () {
                setState(() {
                  activeDashboardView = DashboardViewComponent.Feed;
                });
                return widget.onTap(activeDashboardView);
              },
            ),
            SizedBox(
              width: Spacing * 4,
            ),
            InkWell(
              child: FeedSelectorText(
                text: "Explore",
                active: activeDashboardView == DashboardViewComponent.Explore,
              ),
              onTap: () {
                setState(() {
                  activeDashboardView = DashboardViewComponent.Explore;
                });
                return widget.onTap(activeDashboardView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
