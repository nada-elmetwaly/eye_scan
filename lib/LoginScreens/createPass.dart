// ignore_for_file: prefer_const_constructors

import 'package:eye_scan/LoginScreens/after_create.dart';
import 'package:eye_scan/LoginScreens/shared_style/field_style.dart';
import 'package:eye_scan/LoginScreens/widgets/common_text.dart';
import 'package:eye_scan/LoginScreens/widgets/desc.dart';
import 'package:eye_scan/components/customButton.dart';
import 'package:eye_scan/components/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CreatePass extends StatefulWidget {
  const CreatePass({super.key});

  @override
  State<CreatePass> createState() => _CreatePassState();
}

class _CreatePassState extends State<CreatePass> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  bool passToggle = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
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
              ) ,
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40.0,
                      ),
                      child: TextFormField(
                        controller: password,
                        obscureText: passToggle,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide: BorderSide(
                                color: Color(0xff75C2F6),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 2.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                            prefixIcon: Image.asset("assets/images/Password.png") ,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  passToggle = !passToggle;
                                });
                              },
                              child: Icon(
                                passToggle
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Color(0xff787676),
                              ),
                            ),
                            hintText: "Password",
                            hintStyle:
                                TextStyle(fontFamily: "myfont", fontSize: 17),
                            filled: true,
                            fillColor: Color(0xffF3F3F3)),
                        validator: (value) {
                          if (value!.isEmpty ) {
                            return 'Please a Enter Password';
                          } 
                          if (value.length < 10){
                            return "Weak password";
                          }
                          
                          
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 18,) , 
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40.0,
                      ),
                      child: TextFormField(
                        controller: confirmpassword,
                        obscureText: passToggle,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide: BorderSide(
                                color: Color(0xff75C2F6),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 2.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                            prefixIcon: Image.asset("assets/images/Password.png") ,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  passToggle = !passToggle;
                                });
                              },
                              child: Icon(
                                passToggle
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Color(0xff787676),
                              ),
                            ),
                            hintText: "Confirm Password",
                            hintStyle:
                                TextStyle(fontFamily: "myfont", fontSize: 17),
                            filled: true,
                            fillColor: Color(0xffF3F3F3)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please re-enter password';
                          }
                          print(password.text);
                          print(confirmpassword.text);
                          if (password.text != confirmpassword.text) {
                            return "Password does not match";
                          }
                          return null;
                        },
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
                                builder: (context) => AfterCreate()));
                        } else {
                          print("UnSuccessfull");
                        }
                  },
                  text: "Create password")
            ],
          ),
      ),
    );
  }
}