// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new

import 'package:eye_scan/LoginScreensPatient/login.dart';
import 'package:eye_scan/LoginScreensPatient/shared_style/field_style.dart';
import 'package:eye_scan/LoginScreensPatient/signup2.dart';
import 'package:eye_scan/components/customButton.dart';
import 'package:eye_scan/components/custom_field.dart';
import 'package:eye_scan/components/square_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? email = "";
  String? phone = "";
  String? name = "";
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();


  Future<void> setEmail() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', emailController.text);
  }
  Future<void> setname() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', nameController.text);
  }
  Future<void> setphone() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('phone', phoneController.text);
  }
  Future<void> setpassword() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('password', password.text);
  }
  Future<void> setConfirmpassword() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('confirmPassword', confirmpassword.text);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }

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
                 

          
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: LinearPercentIndicator(
                          animation: true,
                          animationDuration: 1000 ,
                          lineHeight: 6,
                          percent: 0.5,
                          barRadius: Radius.circular(16),
                          progressColor: Color(0xff75C2F6),
                          backgroundColor: Color(0xffDADADA),
                          width: 372,
                        ),
                      ) ,
                      SizedBox(height: 10,) , 
                      Text("1/2" , style: TextStyle(
                        fontSize: 15 , 
                        fontWeight: FontWeight.bold
                      ),) ,
                      SizedBox(height: 19,) ,
                      

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40.0,
                    ),
                    child: TextFormField(
                      controller: nameController,
                      obscureText: false,
                      decoration: buildInputDecoration("assets/images/User-Outline.png", "any name"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return " Please Enter name ";
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
                      controller: emailController,
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
                      controller: phoneController,
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
                              builder: (context) => SignUptwo()));
                        return;
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
                  SizedBox(
                    height: 20,
                  ),
                  Row(children: [
                    Expanded(
                      child: new Container(
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 20.0),
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
                          margin:
                              const EdgeInsets.only(left: 20.0, right: 10.0),
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
      ),
    );
  }

  
}
