import 'package:flutter/material.dart';
import 'package:labala/core/theme/theme.dart';

class ProductImageContainer extends StatelessWidget {
  const ProductImageContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(right: Spacing * 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Spacing),
        color: Colors.grey,
      ),
      child: AspectRatio(
        aspectRatio: 16 / 9,
      ),
    );
  }
}
