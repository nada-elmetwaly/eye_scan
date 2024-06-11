// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'dart:convert';

import 'package:eye_scan/LoginScreensPatient/password_forget.dart';
import 'package:eye_scan/LoginScreensPatient/shared_style/field_style.dart';
import 'package:eye_scan/LoginScreensPatient/signup.dart';
import 'package:eye_scan/LoginScreensPatient/welcome.dart';
import 'package:eye_scan/LoginScreensDoctor/signup_1.dart';
import 'package:eye_scan/LoginScreensDoctor/welcome.dart';
import 'package:eye_scan/components/customButton.dart';
import 'package:eye_scan/components/custom_field.dart';
import 'package:eye_scan/components/square_tile.dart';
import 'package:eye_scan/dynamicPage.dart';
import 'package:eye_scan/providers/authtokeenprovider.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginD extends StatefulWidget {
  LoginD({super.key});

  @override
  State<LoginD> createState() => _LoginDState();
}

class _LoginDState extends State<LoginD> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String?name;
  String?email;
  Map<String, dynamic> profileData = {};
  Future<void> _login() async {
    final url = 'https://laravel.investtradegm.com/api/doctor/login';
    final phone = _phoneController.text;
    final password = _passwordController.text;

    final response = await http.post(Uri.parse(url), body: {
      'phone': phone,
      'password': password,
    });

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      if(responseData['message']=='Login Successfully')
      {
        String authtoken=responseData["token"];
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('authtoken', authtoken);
        Provider.of<Authtokenprovider>(context,listen: false).setAuthToken(authtoken);
        print('login yes');
        Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeD()));
      }else {

          showDialog(context: context, builder: (BuildContext context)
          {
            return AlertDialog(
              title: Text(' Password is wrong',style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'myfont'),),

              actions: [
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child:Text('OK',style: TextStyle(fontSize: 20,color: Color(0xff75C2F6),fontFamily: 'myfont'),))
              ],
            );
          });}
      print('Login successful');


    } else if(response.statusCode == 422 ) {

      showDialog(context: context, builder: (BuildContext context)
      {
        return AlertDialog(
          title: Text('The selected phone is invalid',style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'myfont'),),

          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop();
            }, child:Text('OK',style: TextStyle(fontSize: 20,color: Color(0xff75C2F6),fontFamily: 'myfont'),))
          ],
        );
      });
    }
  }
  Future<void> setDoctorName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('DoctorName', name!);
  }
  bool passToggle = true;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: TextFormField(
                        controller: _phoneController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.number,
                        obscureText: false,
                        decoration: buildInputDecoration("assets/images/Call.png", "Enter your phone") ,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your phone number';
                          }
                           

                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: TextFormField(
                        controller: _passwordController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                              hintText: "Enter your password",
                              hintStyle:
                                  TextStyle(fontFamily: "myfont", fontSize: 17),
                              filled: true,
                              fillColor: Color(0xffF3F3F3)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your password';
                            }

                            return null;
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 218),
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Forget()));
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
                      onPressed: ()  {
                       
                        if (_formKey.currentState!.validate()) {
                          _login();

                        };
                      },
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
                          style: TextStyle(
                            color: Color(0xff787876),
                            fontFamily: "myfont",
                            fontSize: 16,
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              //signup
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SignUpOne()));
                            },
                            child: Text(
                              " Sign up",
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
                        style:
                            TextStyle(color: Color(0xffA1A8B0), fontSize: 18),
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
      ),
    );
  }
}
