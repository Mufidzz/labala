import 'package:flutter/material.dart';
import 'package:labala/core/theme/spacing.dart';
import 'package:labala/core/theme/text.dart';

class WButton extends StatelessWidget {
  final Color backgroundColor;
  final bool isFilled;
  final Color textColor;
  final String text;
  final Function onTap;
  final double height;
  final double width;
  final FontWeight fontWeight;

  const WButton({
    Key key,
    @required this.backgroundColor,
    this.isFilled = true,
    @required this.textColor,
    @required this.text,
    @required this.onTap,
    this.height = Spacing * 8,
    this.width = double.infinity,
    this.fontWeight = FontWeight.w600,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isFilled ? backgroundColor : Colors.transparent,
        borderRadius: BorderRadius.circular(Spacing * 1),
        border: Border.all(
          color: backgroundColor,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            width: width,
            height: height,
            alignment: Alignment.center,
            child: Text(
              text,
              style: CharacterStyle.normal(
                fontWeight: fontWeight,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
