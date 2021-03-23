import 'package:flutter/material.dart';
import 'package:labala/core/routes/asset_routes.dart';

class WSafeArea extends StatelessWidget {
  final Widget child;
  final Color color;
  final bool disableImage;
  const WSafeArea({
    Key key,
    @required this.child,
    this.color = Colors.white,
    this.disableImage = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        image: disableImage
            ? null
            : DecorationImage(
                image: AssetImage(
                  GreenBackgroundL,
                ),
                fit: BoxFit.cover,
              ),
      ),
      child: SafeArea(
        child: child,
      ),
    );
  }
}
