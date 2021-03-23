import 'package:flutter/material.dart';
import 'package:labala/core/routes/asset_routes.dart';

class GreenDashboardBackground extends StatelessWidget {
  const GreenDashboardBackground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 175,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            GreenBackground,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
