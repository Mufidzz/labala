import 'package:flutter/material.dart';

class TBoxShadow {
  static cardNormal() {
    return BoxShadow(
      color: Colors.grey.withOpacity(.2),
      spreadRadius: 1,
      blurRadius: 5,
      offset: Offset(2, 2),
    );
  }
}
