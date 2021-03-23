import 'package:flutter/material.dart';

import 'notification_type.dart';
import 'notification_type_tile.dart';

class OtherPersonRequestNotificationType extends StatelessWidget {
  const OtherPersonRequestNotificationType({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationType(
      title: "Permintaan Orang Lain",
      child: [
        NotificationTypeTile(
          title: "1,234 Menunggu Konfirmasi",
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sagittis velit et purus ultricies, at sagittis quam vehicula.",
        ),
        NotificationTypeTile(
          title: "1,234 Menunggu Konfirmasi",
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sagittis velit et purus ultricies, at sagittis quam vehicula.",
        ),
        NotificationTypeTile(
          title: "1,234 Menunggu Konfirmasi",
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sagittis velit et purus ultricies, at sagittis quam vehicula.",
        ),
      ],
    );
  }
}
