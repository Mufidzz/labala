import 'package:flutter/material.dart';
import 'package:labala/core/theme/theme.dart';
import 'package:labala/core/widgets/widgets.dart';

import 'profile_indicator.dart';

class ProfileInformationCard extends StatelessWidget {
  const ProfileInformationCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: Spacing * 4,
        right: Spacing * 4,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              VSpacing(50),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    TBoxShadow.cardNormal(),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    Spacing,
                  ),
                ),
                padding: EdgeInsets.all(Spacing * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 100,
                          height: 45,
                        ),
                        HSpacing(Spacing),
                        Expanded(
                          child: WButton(
                            height: Spacing * 6,
                            onTap: () {},
                            backgroundColor: Palette.primary,
                            text: "Ikuti",
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Fullname Fullname",
                      style: CharacterStyle.normal(
                        color: Palette.darker,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    VSpacing(Spacing * 2),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas scelerisque nunc sed purus dapibus finibus. Nulla vel dolor arcu. Vivamus convallis scelerisque nunc, ultrices auctor felis blandit a. Praesent vel efficitur metus, ut consequat dui. Curabitur ut felis in urna hendrerit semper. Fusce et elementum urna. Nunc hendrerit bibendum magna eget placerat. Nullam dictum odio vitae neque bibendum venenatis. Vestibulum nec egestas est. Aenean rutrum est vel risus laoreet laoreet.",
                      style: CharacterStyle.smallest(
                        color: Palette.darker,
                      ),
                      maxLines: 4,
                    ),
                    VSpacing(Spacing * 4),
                    ProfileIndicator(),
                    VSpacing(Spacing),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: Spacing * 2),
            width: 100,
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
