// ignore_for_file: prefer_const_constructors

import 'package:eye_scan/LoginScreens/reset.dart';
import 'package:eye_scan/LoginScreens/shared_style/field_style.dart';
import 'package:eye_scan/LoginScreens/widgets/common_text.dart';
import 'package:eye_scan/LoginScreens/widgets/desc.dart';
import 'package:eye_scan/components/customButton.dart';
import 'package:eye_scan/components/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
    final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Column(
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
              Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40.0,
                      ),
                      child: TextFormField(
                        obscureText: false,
                        decoration: buildInputDecoration("assets/images/Call.png", "Phone Number") ,
                        keyboardType: TextInputType.number,
                        validator: (value){
                          if(value!.isEmpty)
                        {
                          return 'Please enter phone no ';
                        }
                        if (value.length != 11){
                            return "Phone number must be 11-digit";
                          }
                        return null;
                        }
                      ),
                    ),
              SizedBox(
                height: 35,
              ),
              CustomButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                        print("successful");
                        Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Reset()));
                      } else {
                        print("UnSuccessfull");
                      }
                  },
                  text: "Reset password")
            ],
          ),
        ),
      ),
    );
  }
}
