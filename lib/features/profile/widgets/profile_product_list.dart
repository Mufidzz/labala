import 'package:flutter/material.dart';
import 'package:labala/core/theme/theme.dart';
import 'package:labala/core/widgets/widgets.dart';

class ProfileProductList extends StatelessWidget {
  const ProfileProductList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: Spacing * 4,
        right: Spacing * 4,
        top: Spacing * 4,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Produk",
            style: CharacterStyle.normal2(
              fontWeight: FontWeight.w500,
            ),
          ),
          Form(
            child: WTextField(
              icon: Icons.search,
              labelText: "Cari Barang",
            ),
          ),
          VSpacing(Spacing),
          //Product List Here
          WFeedTile(
            disableUserInformation: true,
          ),
          VSpacing(Spacing * 4)
        ],
      ),
    );
  }
}
