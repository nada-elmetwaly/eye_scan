// ignore_for_file: prefer_const_constructors

import 'package:eye_scan/LoginScreens/reset.dart';
import 'package:eye_scan/LoginScreens/widgets/common_text.dart';
import 'package:eye_scan/LoginScreens/widgets/desc.dart';
import 'package:eye_scan/components/customButton.dart';
import 'package:eye_scan/components/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Forget extends StatelessWidget {
  const Forget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 35,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                SizedBox(
                  width: 25,
                ),
                CommonText(text: "Forget password")
                
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Description(text: "Enter your phone number , we will send you confirmation code"),
            SizedBox(
              height: 20,
            ),
            CustomField(
              text: "389587249824",
              icon: PhosphorIcon(
                PhosphorIcons.phone(),
                color: Color(0xff75C2F6),
              ),
              obscureText: false,
            ),
            SizedBox(
              height: 35,
            ),
            CustomButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Reset()));
                },
                text: "Reset password")
          ],
        ),
      ),
    );
  }
}
