import 'package:flutter/material.dart';
import 'package:labala/core/models/MUser.dart';
import 'package:labala/core/theme/palette.dart';
import 'package:labala/core/theme/spacing.dart';
import 'package:labala/core/theme/text.dart';
import 'package:labala/core/widgets/WButton.dart';
import 'package:labala/core/widgets/WTextDivider.dart';
import 'package:labala/core/widgets/WTextFormField.dart';
import 'package:labala/features/auth/usecases/uc.login.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  MUserCredential userCredential;
  Map<String, dynamic> requestState = {"Login": false};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userCredential = new MUserCredential();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          WTextField(
            labelText: "Email",
            hintText: "Masukkan Email",
            icon: Icons.mail_outline,
            required: true,
            onChanged: (String value) {
              userCredential.email = value;
            },
          ),
          WTextField(
            labelText: "Password",
            hintText: "Masukkan Password",
            icon: Icons.lock_open_rounded,
            obscureText: true,
            required: true,
            onChanged: (String value) {
              userCredential.password = value;
            },
          ),
          Container(
            height: Spacing * 8,
            alignment: Alignment.centerRight,
            child: Text(
              "Lupa Password ?",
              style: CharacterStyle.small(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: Spacing,
          ),
          _loginButton(),
          WTextDivider(
            padding: EdgeInsets.only(
              top: Spacing,
              bottom: Spacing,
            ),
          ),
          WButton(
            text: "Daftar",
            isFilled: false,
            textColor: Palette.primary,
            onTap: () {
              UCLogin(context).registerButton();
            },
            backgroundColor: Palette.primary,
          )
        ],
      ),
    );
  }

  _loginButton() {
    return requestState["Login"]
        ? Container(
            height: Spacing * 8,
            width: Spacing * 8,
            child: CircularProgressIndicator(),
          )
        : WButton(
            text: "Masuk",
            textColor: Colors.white,
            onTap: () async {
              setState(() {
                requestState["Login"] = true;
              });
              await UCLogin(context).loginButton(
                userCredential: userCredential,
              );
              setState(() {
                requestState["Login"] = false;
              });
            },
            backgroundColor: Palette.primary,
          );
  }
}
