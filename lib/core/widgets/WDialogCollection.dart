import 'package:flutter/material.dart';
import 'package:labala/core/theme/palette.dart';
import 'package:labala/core/theme/spacing.dart';
import 'package:labala/core/theme/text.dart';
import 'package:labala/core/widgets/WButton.dart';
import 'package:labala/core/widgets/widgets.dart';

class SWDialogCollection {
  final BuildContext context;

  SWDialogCollection(this.context);

  Future<void> showInformationDialog({
    @required String title,
    @required String content,
    String buttonText = "OK",
    Color buttonColor = Palette.primary,
    bool barrierDismissible = false,
  }) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) => Dialog(
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(Spacing * 2),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title ?? "Null",
                  textAlign: TextAlign.center,
                  style: CharacterStyle.medium(fontWeight: FontWeight.bold),
                ),
                Divider(
                  color: Palette.primary.withOpacity(.5),
                ),
                Text(
                  content ?? "Null",
                  textAlign: TextAlign.center,
                  style: CharacterStyle.medium(),
                ),
                VSpacing(Spacing * 2),
                WButton(
                  backgroundColor: Palette.primary,
                  textColor: Colors.white,
                  text: buttonText,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
          )),
    );
  }
}
