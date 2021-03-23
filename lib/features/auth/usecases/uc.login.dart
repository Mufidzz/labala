import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:labala/core/models/MUser.dart';
import 'package:labala/core/routes/routes.dart';
import 'package:http/http.dart' as http;
import 'package:labala/core/widgets/widgets.dart';
import 'package:labala/core/utilities/utilities.dart';

class UCLogin {
  final BuildContext context;

  UCLogin(this.context);

  loginButton({MUserCredential userCredential}) async {
    return await Future.delayed(
      Duration(seconds: 2),
      () => {
        Login(context, userCredential: userCredential).go(),
      },
    );
  }

  registerButton() {
    return ExtendedNavigator.root.replace(Routes.vRegister);
  }

  gotoForgetPassword() {}
}

class Login {
  final MUserCredential userCredential;
  final BuildContext context;

  Login(this.context, {this.userCredential});
  Future<void> go() async {
    var response = await http.post(
      APIRoute.login.getUri(),
      body: json.encode(userCredential.toJson()),
    );

    if (response.statusCode != 200) {
      return SWDialogCollection(context).showInformationDialog(
        title: "Login",
        content: UResponseErrorMessage.login(response.statusCode),
        barrierDismissible: true,
      );
    }

    return ExtendedNavigator.root.pushAndRemoveUntil(
      Routes.vDashboard,
      (route) => false,
    );
  }
}
