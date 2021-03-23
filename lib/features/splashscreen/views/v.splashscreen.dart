import 'package:flutter/material.dart';
import 'package:labala/core/routes/asset_routes.dart';
import 'package:labala/core/theme/theme.dart';
import 'package:labala/core/widgets/widgets.dart';

class VSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WSafeArea(
      disableImage: true,
      child: Scaffold(
        backgroundColor: Palette.background,
        body: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      Logo,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment(0, .8),
              child: Container(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(
                  backgroundColor: Palette.primary,
                  valueColor: AlwaysStoppedAnimation<Color>(Palette.background),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
