import 'package:flutter/material.dart';

import 'profile_indicator_text.dart';

class ProfileIndicator extends StatelessWidget {
  const ProfileIndicator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ProfileIndicatorText(
          count: 1234,
          title: "Diikuti",
        ),
        ProfileIndicatorText(
          count: 1234,
          title: "Mengikuti",
        ),
        ProfileIndicatorText(
          count: 1234,
          title: "Produk",
        ),
      ],
    );
  }
}
