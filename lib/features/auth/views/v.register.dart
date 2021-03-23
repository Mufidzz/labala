import 'package:flutter/material.dart';
import 'package:labala/core/theme/spacing.dart';
import 'package:labala/features/auth/widgets/header.dart';
import 'package:labala/features/auth/widgets/register_form.dart';

class VRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(
                title: "Halo,",
                subtitle:
                    "Salam Kenal, biar lebih akrab \nisi data dirimu dulu ya",
              ),
              SizedBox(
                height: Spacing * 6,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: Spacing * 6,
                  right: Spacing * 6,
                ),
                child: RegisterForm(),
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
