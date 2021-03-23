import 'package:flutter/material.dart';
import 'package:labala/core/theme/theme.dart';
import 'package:labala/core/widgets/widgets.dart';

class VChatEnter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WSafeArea(
      disableImage: true,
      child: Scaffold(
        backgroundColor: Palette.background,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Palette.darker,
                ),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.chat_bubble,
                    color: Palette.darker,
                  ),
                  onPressed: () {},
                ),
              ],
              backgroundColor: Colors.white,
              title: Row(
                children: [
                  Container(
                    height: 25,
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                      ),
                    ),
                  ),
                  HSpacing(Spacing * 2),
                  Expanded(
                    child: Text(
                      "Full.idFull.idFull.idFull.idFull.idFull.id",
                      overflow: TextOverflow.ellipsis,
                      style: CharacterStyle.normal(
                        color: Palette.darker,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: Spacing * 4,
                    right: Spacing * 4,
                    top: Spacing * 4,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      OthersChatTile(),
                      SelfChatTile(),
                      SelfChatTile(),
                      SelfChatTile(),
                      OthersChatTile(),
                      OthersChatTile(),
                      OthersChatTile(),
                      OthersChatTile(),
                      VSpacing(Spacing * 2),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: Spacing * 4,
                top: Spacing,
                bottom: Spacing,
              ),
              color: Colors.white,
              child: Form(
                child: Row(
                  children: [
                    Expanded(
                      child: WTextField(
                        labelText: "Pesan",
                        hintText: "Ketik Pesan Disini",
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.send_outlined,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SelfChatTile extends StatelessWidget {
  const SelfChatTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Spacing * 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HSpacing(Spacing * 6 + 25),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Spacing),
              ),
              padding: EdgeInsets.all(Spacing * 2),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vehicula auctor lacus at imperdiet. Ut nec lectus blandit nulla sollicitudin rhoncus in sed nisl. In fermentum lectus ac lacinia venenatis. Donec pharetra eu magna quis suscipit. Quisque bibendum porta velit, vel ultricies quam tincidunt a.",
                style: CharacterStyle.small(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OthersChatTile extends StatelessWidget {
  const OthersChatTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Spacing * 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 25,
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
            ),
          ),
          HSpacing(Spacing * 2),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Spacing),
              ),
              padding: EdgeInsets.all(Spacing * 2),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vehicula auctor lacus at imperdiet. Ut nec lectus blandit nulla sollicitudin rhoncus in sed nisl. In fermentum lectus ac lacinia venenatis. Donec pharetra eu magna quis suscipit. Quisque bibendum porta velit, vel ultricies quam tincidunt a.",
                style: CharacterStyle.small(),
              ),
            ),
          ),
          HSpacing(Spacing * 6),
        ],
      ),
    );
  }
}
