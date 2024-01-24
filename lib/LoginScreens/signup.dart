// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new

import 'package:eye_scan/LoginScreens/login.dart';
import 'package:eye_scan/components/customButton.dart';
import 'package:eye_scan/components/custom_field.dart';
import 'package:eye_scan/components/square_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 33,
                    fontFamily: "myfont",
                    letterSpacing: 3,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomField(
                  text: "any name",
                  icon: Icon(
                    Icons.person,
                    color: Color(0xff75C2F6),
                  ),
                  obscureText: false,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomField(
                  text: "Email",
                  icon: Icon(
                    Icons.email_outlined,
                    color: Color(0xff75C2F6),
                  ),
                  obscureText: false,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomField(
                  text: "Password",
                  icon: PhosphorIcon(
                    PhosphorIcons.lock(),
                    color: Color(0xff75C2F6),
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomField(
                  text: "Confirm Password",
                  icon: PhosphorIcon(
                    PhosphorIcons.lock(),
                    color: Color(0xff75C2F6),
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomField(
                  text: "Phone",
                  icon: PhosphorIcon(
                    PhosphorIcons.phone(),
                    color: Color(0xff75C2F6),
                  ),
                  obscureText: false,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Wrap(children: [
                    Row(
                      children: [
                        Checkbox(

                            checkColor: Colors.white,
                            
                            value: isChecked,
                            onChanged: (value) {
                              isChecked = !isChecked;
                              setState(() {});
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
                  onPressed: () {},
                  text: "Sign Up",
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
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          " Log in",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff75C2F6),
                            fontFamily: "myfont",
                            fontSize: 16
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: Divider(
                          color: Color(0xffEAF6F6),
                          height: 36,
                        )),
                  ),
                  Text(
                    "OR",
                    style: TextStyle(color: Color(0xffA1A8B0), fontSize: 18),
                  ),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Divider(
                          color: Color(0xffEAF6F6),
                          height: 36,
                        )),
                  ),
                ]),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    SquareTile(
                      imagePath: "assets/images/google.png",
                      text: "Sign in with Google",
                      width: 45,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SquareTile(
                      imagePath: "assets/images/apple-logo.png",
                      text: "Sign in with Apple",
                      width: 50,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SquareTile(
                      imagePath: "assets/images/face.png",
                      text: "Sign in with Facebook",
                      width: 35,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
