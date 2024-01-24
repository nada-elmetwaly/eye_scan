// ignore_for_file: prefer_const_constructors

import 'package:eye_scan/LoginScreens/after_create.dart';
import 'package:eye_scan/LoginScreens/widgets/common_text.dart';
import 'package:eye_scan/LoginScreens/widgets/desc.dart';
import 'package:eye_scan/components/customButton.dart';
import 'package:eye_scan/components/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CreatePass extends StatelessWidget {
  const CreatePass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            SizedBox(
              height: 55,
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
                CommonText(text: "Create password")
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Description(text: "Create your new password to login"),
            SizedBox(
              height: 20,
            ),
            CustomField(
                    text: "New Password",
                    icon: PhosphorIcon(
                          PhosphorIcons.lock(),
                          color: Color(0xff75C2F6),
                        ),
                        obscureText: true,
                    ),
                    SizedBox(height: 16,) ,
                    CustomField(
                    text: "Confirm Password",
                    icon: PhosphorIcon(
                          PhosphorIcons.lock(),
                          color: Color(0xff75C2F6),
                        ),
                        obscureText: true,
                    ),
            SizedBox(
              height: 35,
            ),
            CustomButton(
                onPressed: () {
                 Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AfterCreate()));
                },
                text: "Create password")
          ],
        ),
    );
  }
}