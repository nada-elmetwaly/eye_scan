// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:eye_scan/components/custom_button.dart';
import 'package:eye_scan/components/custom_field.dart';
import 'package:eye_scan/components/square_tile.dart';
import 'package:flutter/material.dart';

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
                CustomField(text: "Enter your phone", icon: Icon(Icons.phone),),
                SizedBox(
                  height: 23,
                ),
                CustomField(text: "Enter your Password", icon: Icon(Icons.lock_clock_outlined)),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 218),
                  child: GestureDetector(
                      onTap: () {},
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
                CustomButton(text: "Login",),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an accout? ",
                      style: TextStyle(color: Color(0xff787876)),
                    ),
                    GestureDetector(
                        onTap: () {
                          //signup
                        },
                        child: Text(
                          " Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff75C2F6),
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children :[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: Divider(
                          color: Color(0xffEAF6F6),
                          height: 36,
                        )),
                  ),
                  Text("OR" , style: TextStyle(color: Color(0xffA1A8B0), fontSize: 18),),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Divider(
                          color: Color(0xffEAF6F6),
                          height: 36,
                        )),
                  ),
                ]),
                SizedBox(height: 15,),
                Column(
                  children: [
                    SquareTile(imagePath: "assets/images/google.png" , text: "Sign in with Google",width: 45,),
                    SizedBox(height: 15,),
                    SquareTile(imagePath: "assets/images/apple-logo.png", text: "Sign in with Apple", width: 50,),
                    SizedBox(height: 15,),
                    SquareTile(imagePath: "assets/images/face.png", text: "Sign in with Facebook" , width: 35, )
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

