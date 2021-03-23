import 'package:flutter/material.dart';
import 'package:labala/core/theme/theme.dart';
import 'package:labala/core/widgets/widgets.dart';
import 'package:labala/features/feed/views/vc.feed.dart';

class VCExplore extends StatelessWidget {
  final Function onFilterTap;
  const VCExplore({
    Key key,
    @required this.onFilterTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Form(
                child: WTextField(
                  icon: Icons.search,
                  labelText: "Cari Barang",
                  hintText: "Nama Barang",
                ),
              ),
            ),
            HSpacing(Spacing * 2),
            InkWell(
              onTap: onFilterTap,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Spacing),
                ),
                child: Icon(
                  Icons.filter_alt,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
        VSpacing(Spacing),
        VCFeed(),
      ],
    );
  }
}
