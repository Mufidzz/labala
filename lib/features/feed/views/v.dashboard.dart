import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:labala/core/theme/theme.dart';
import 'package:labala/core/widgets/widgets.dart';
import 'package:labala/features/feed/views/vc.explore.dart';
import 'package:labala/features/feed/views/vc.feed.dart';
import 'package:labala/features/feed/widgets/feed_selector.dart';

class VDashboard extends StatefulWidget {
  @override
  _VDashboardState createState() => _VDashboardState();
}

class _VDashboardState extends State<VDashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  DashboardViewComponent _activeView = DashboardViewComponent.Feed;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WScaffoldWithNavBar(
        activeIndex: 0,
        key: _scaffoldKey,
        endDrawer: Container(
          padding: EdgeInsets.fromLTRB(
            Spacing * 2,
            Spacing * 4,
            Spacing * 2,
            Spacing * 4,
          ),
          width: 300,
          height: MediaQuery.of(context).size.height,
          color: Palette.background,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WIconedText(),
              VSpacing(Spacing * 4),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pencarian Berdasarkan",
                      style: CharacterStyle.normal(),
                    ),
                    WTextField(),
                    VSpacing(Spacing * 2),
                    Text(
                      "Urutkan Berdasarkan",
                      style: CharacterStyle.normal(),
                    ),
                    WTextField()
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            GreenDashboardBackground(),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppBar(
                    automaticallyImplyLeading: false,
                    actions: [
                      IconButton(
                          icon: Icon(
                            Icons.chat_bubble,
                            color: Colors.white,
                          ),
                          onPressed: () {})
                    ],
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    title: Text(
                      "Dashboard",
                      style: CharacterStyle.normal2(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  //Feed Type Selector
                  FeedSelector(
                    onTap: (DashboardViewComponent vc) {
                      setState(() {
                        this._activeView = vc;
                      });
                    },
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(
                        left: Spacing * 4,
                        right: Spacing * 4,
                      ),
                      child: SingleChildScrollView(
                        child: _getDashboardView(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _getDashboardView() {
    switch (this._activeView) {
      case DashboardViewComponent.Feed:
        return VCFeed();
      case DashboardViewComponent.Explore:
        return VCExplore(
          onFilterTap: () {
            _scaffoldKey.currentState.openEndDrawer();
          },
        );
      default:
        return VCFeed();
    }
  }
}
