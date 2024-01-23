// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:eye_scan/LoginScreens/password_forget.dart';
import 'package:eye_scan/LoginScreens/signup.dart';
import 'package:eye_scan/components/customButton.dart';
import 'package:eye_scan/components/custom_field.dart';
import 'package:eye_scan/components/square_tile.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                  "Login",
                  style: TextStyle(
                    fontSize: 33,
                    fontFamily: "myfont",
                    letterSpacing: 3,
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                CustomField(
                  text: "Enter your phone",
                  icon: 
                  PhosphorIcon(
                          PhosphorIcons.phone(),
                          color: Color(0xff75C2F6),
                        ),
                        obscureText: false,
                ),
                SizedBox(
                  height: 23,
                ),
                CustomField(
                    text: "Enter your Password",
                    icon: PhosphorIcon(
                          PhosphorIcons.lock(),
                          color: Color(0xff75C2F6),
                        ),
                        obscureText: true,
                    ),



                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 218),
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Forget()));
                      },
                      child: Text(
                        "Forget Password ?",
                        style: TextStyle(
                            color: Color(0xff75C2F6),
                            fontWeight: FontWeight.bold),
                      )),
                ),
                SizedBox(
                  height: 23,
                ),
                CustomButton(
                  onPressed: () {},
                  text: "Login",
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an accout ? ",
                      style: TextStyle(color: Color(0xff787876) , 
                      fontFamily: "myfont" ,
                      fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          //signup
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SignUp()));
                        },
                        child: Text(
                          " Sign up",
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
