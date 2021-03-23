import 'package:flutter/material.dart';
import 'package:labala/core/models/MUser.dart';
import 'package:labala/core/routes/router.gr.dart';
import 'package:labala/core/routes/routes.dart';
import 'package:labala/core/theme/palette.dart';
import 'package:labala/core/theme/spacing.dart';
import 'package:labala/core/widgets/WButton.dart';
import 'package:labala/core/widgets/WTextDivider.dart';
import 'package:labala/core/widgets/WTextFormField.dart';
import 'package:labala/features/auth/usecases/uc.register.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    Key key,
  }) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  MUser user;
  Map<String, dynamic> requestState = {"Register": false};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user = new MUser();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          WTextDivider(
            text: "Biodata",
          ),
          WTextField(
            labelText: "Nama Lengkap",
            hintText: "Masukkan Nama Lengkap",
            icon: Icons.person_outline,
            required: true,
            onChanged: (String value) {
              user.fullName = value;
            },
          ),
          WTextField(
            labelText: "Bio",
            hintText: "Masukkan Bio",
            icon: Icons.person_outline,
            required: true,
            onChanged: (String value) {
              user.bio = value;
            },
          ),
          WTextField(
            labelText: "Nomor Whatsapp",
            hintText: "Masukkan Nomor Whatsapp",
            icon: Icons.chat_bubble_outline,
            required: true,
            onChanged: (String value) {
              user.whatsapp = value;
            },
          ),
          WTextDivider(
            text: "Kredensial",
          ),
          WTextField(
            labelText: "Profile ID",
            hintText: "Masukkan Profile ID",
            icon: Icons.person_outline,
            required: true,
            onChanged: (String value) {
              user.userDefinedID = value;
            },
          ),
          WTextField(
            labelText: "Email",
            hintText: "Masukkan Email",
            icon: Icons.mail_outline,
            required: true,
            onChanged: (String value) {
              user.email = value;
            },
          ),
          WTextField(
            labelText: "Password",
            hintText: "Masukkan Password",
            icon: Icons.lock_open_rounded,
            obscureText: true,
            required: true,
            onChanged: (String value) {
              user.password = value;
            },
          ),
          SizedBox(
            height: Spacing * 4,
          ),
          _registerButton(),
          WTextDivider(
            padding: EdgeInsets.only(
              top: Spacing,
              bottom: Spacing,
            ),
          ),
          WButton(
            text: "Masuk",
            isFilled: false,
            textColor: Palette.primary,
            onTap: () {
              UCRegister(context).loginButton();
            },
            backgroundColor: Palette.primary,
          )
        ],
      ),
    );
  }

  _registerButton() {
    return requestState["Register"]
        ? Container(
            height: Spacing * 8,
            width: Spacing * 8,
            child: CircularProgressIndicator(),
          )
        : WButton(
            text: "Daftar",
            textColor: Colors.white,
            onTap: () async {
              setState(() {
                requestState["Register"] = true;
              });
              await UCRegister(context).registerButton(user: user);
              setState(() {
                requestState["Register"] = false;
              });
            },
            backgroundColor: Palette.primary,
          );
  }
}
