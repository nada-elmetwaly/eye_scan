import 'package:eye_scan/LoginScreensPatient/login.dart';
import 'package:eye_scan/LoginScreensPatient/widgets/box.dart';
import 'package:eye_scan/components/customButton.dart';
import 'package:flutter/material.dart';

class AfterCreate extends StatelessWidget {
  const AfterCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              CommonBox(text: "Success", desc: "You have been successfully reset your password") ,
              
              CustomButton(
                  text: "Login",
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Login()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
