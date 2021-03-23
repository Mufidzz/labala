import 'package:flutter/material.dart';
import 'package:labala/core/theme/theme.dart';
import 'package:labala/core/widgets/widgets.dart';

class VChatList extends StatelessWidget {
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
              title: Text(
                "Chat",
                style: CharacterStyle.normal2(
                  color: Palette.darker,
                  fontWeight: FontWeight.w500,
                ),
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
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WTextField(
                          icon: Icons.search,
                          labelText: "Cari Pesan",
                          hintText: "Masukkan Kata Kunci",
                        ),
                        VSpacing(Spacing * 2),
                        Text(
                          "Pesan",
                          style: CharacterStyle.medium(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        VSpacing(Spacing * 2),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                        ChatListTile(),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChatListTile extends StatelessWidget {
  const ChatListTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 30,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
              ),
            ),
            HSpacing(Spacing * 2),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Fullname Fullname",
                        style: CharacterStyle.normal(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      HSpacing(Spacing * 2),
                      Container(
                        height: 7.5,
                        width: 7.5,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Disini ini nanti isinya pesan dia yang dulu dulu itu. cDisini ini nanti isinya pesan dia yang dulu dulu itu. c",
                    style: CharacterStyle.normal(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
        VSpacing(Spacing * 3),
      ],
    );
  }
}
