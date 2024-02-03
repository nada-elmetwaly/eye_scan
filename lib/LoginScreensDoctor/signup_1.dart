// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eye_scan/LoginScreens/login.dart';
import 'package:eye_scan/LoginScreens/shared_style/field_style.dart';
import 'package:eye_scan/LoginScreens/widgets/common_text.dart';
import 'package:eye_scan/LoginScreensDoctor/signup_2.dart';
import 'package:eye_scan/components/customButton.dart';
import 'package:eye_scan/components/custom_field.dart';
import 'package:eye_scan/components/square_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SignUpOne extends StatefulWidget {
  SignUpOne({super.key});

  @override
  State<SignUpOne> createState() => _SignUpOneState();
}

class _SignUpOneState extends State<SignUpOne> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  bool isChecked = false;
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Form(
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
                  width: 59,
                ),
                CommonText(text: "Sign Up")
                
              ],
            ),
                  SizedBox(
                    height: 30,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: LinearPercentIndicator(
                      animation: true,
                      animationDuration: 1000 ,
                      lineHeight: 6,
                      percent: 0.35,
                      barRadius: Radius.circular(16),
                      progressColor: Color(0xff75C2F6),
                      backgroundColor: Color(0xffDADADA),
                      width: 372,
                    ),
                  ) ,
                  SizedBox(height: 10,) , 
                  Text("1/3" , style: TextStyle(
                    fontSize: 15 , 
                    fontWeight: FontWeight.bold
                  ),) ,
                  SizedBox(height: 40,) ,
                
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40.0,
                    ),
                    child: TextFormField(
                      obscureText: false,
                      decoration: buildInputDecoration("assets/images/User-Outline.png" , "any name"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return " Please Enter name ";
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40.0,
                    ),
                    child: TextFormField(
                      obscureText: false,
                      decoration: buildInputDecoration("assets/images/sms.png", "Email") ,
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                .hasMatch(value!)) {
                          return "Enter valid email ";
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
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
                  SizedBox(
                    height: 16,
                  ),
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
                    height: 16,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Wrap(children: [
                      Row(
                        children: [
                          Checkbox(
                              activeColor: Color(0xff73B8EB),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              }),
                          Text(
                            "I agree to the Eyelink Terms of privacy and ",
                            style: TextStyle(
                              color: Color(0xff787876),
                              fontFamily: "myfont",
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 45),
                        child: Column(
                          children: [
                            Text(
                              "Privacy Policy",
                              style: TextStyle(
                                  color: Color(0xff75C2F6),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  CustomButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("successful");
                        Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUpTwo()));
                      } else {
                        print("UnSuccessfull");
                      }
                    },
                    text: "Next",
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account ? ",
                        style: TextStyle(
                          color: Color(0xff787876),
                          fontFamily: "myfont",
                          fontSize: 16,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Login()));
                          },
                          child: Text(
                            " Log in",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff75C2F6),
                                fontFamily: "myfont",
                                fontSize: 16),
                          )),
                    ],
                  ),
                 
                 
                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  
}
