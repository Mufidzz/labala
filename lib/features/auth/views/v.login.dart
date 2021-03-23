import 'package:flutter/material.dart';
import 'package:labala/core/theme/spacing.dart';
import 'package:labala/features/auth/widgets/header.dart';
import 'package:labala/features/auth/widgets/login_form.dart';

class VLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(
                subtitle: "Silahkan Masuk Untuk Melanjutkan",
                title: "Selamat Datang,",
              ),
              SizedBox(
                height: Spacing * 6,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: Spacing * 6,
                  right: Spacing * 6,
                ),
                child: LoginForm(),
              ),
              SizedBox(
                height: Spacing * 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
