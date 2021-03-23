import 'package:flutter/material.dart';
import 'package:labala/core/routes/asset_routes.dart';
import 'package:labala/core/theme/spacing.dart';
import 'package:labala/core/theme/text.dart';

class Header extends StatelessWidget {
  final String title;
  final String subtitle;

  const Header({
    Key key,
    @required this.title,
    @required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                LoginBackground,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          height: 300,
          padding: const EdgeInsets.all(Spacing * 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                height: Spacing * 8,
                image: AssetImage(LogoWhite),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: CharacterStyle.large(color: Colors.white),
                    ),
                    Text(
                      subtitle,
                      style: CharacterStyle.normal(color: Colors.white),
                    ),
                    SizedBox(
                      height: Spacing * 8,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
