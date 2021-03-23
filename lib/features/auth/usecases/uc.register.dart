import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:labala/core/models/MUser.dart';
import 'package:labala/core/routes/routes.dart';
import 'package:http/http.dart' as http;

class UCRegister {
  final BuildContext context;

  UCRegister(this.context);

  Future<void> registerButton({MUser user}) async {
    return await Register(user: user).go();
  }

  loginButton() {
    return ExtendedNavigator.root.replace(Routes.vLogin);
  }
}

class Register {
  final MUser user;
  Register({this.user});
  Future<void> go() async {
    var response = await http.post(
      APIRoute.register.getUri(),
      body: json.encode(user.toJson()),
    );

    if (response.statusCode != 200) {
      print("Register Failed");
      return;
    }
    print("Register Success");
    return;
  }
}
