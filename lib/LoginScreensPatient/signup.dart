// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new

import 'dart:io';
import 'dart:typed_data';

import 'package:eye_scan/LoginScreensPatient/login.dart';
import 'package:eye_scan/LoginScreensPatient/shared_style/field_style.dart';
import 'package:eye_scan/components/customButton.dart';
import 'package:eye_scan/components/custom_field.dart';
import 'package:eye_scan/components/square_tile.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart'as http;
class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  File? _image;


  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future <void> _register() async {
    final
    url = 'https://laravel.investtradegm.com/api/patient/register';

var
    request = http.MultipartRequest('POST', Uri.parse(url));
request.fields['name'] = nameController.text;
request.fields['email'] = emailController.text;
request.fields['phone'] = phoneController.text;
request.fields['password'] = password.text;
request.fields['confirm_password'] = confirmpassword.text;
request.files.add(await http.MultipartFile.fromPath('image', _image!.path));

var
    response = await request.send();

if (response.statusCode == 200) {
print('Registration successful');
Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
} else {
  showDialog(context: context, builder: (BuildContext context)
  {
    return AlertDialog(
      title: Text('Register failed'),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child:Text('OK',style: TextStyle(fontSize: 20,color: Color(0xff75C2F6),fontFamily: 'myfont'),))
      ],
    );
  });
    print('Failed to register. Error: ${response.reasonPhrase}');
}
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
                    Center(
                      child: Stack(
                        children: [
                          _image != null ?
                          CircleAvatar(
                              radius: 70,
                              backgroundImage:FileImage(_image!)
                          ) : CircleAvatar(
                            radius: 70,
                            backgroundImage: AssetImage(
                                "assets/images/camera.png"),
                          ),
                          Positioned(
                              bottom: -0,
                              left: 100,
                              child: IconButton(
                                  onPressed: () {
                                    showImagePickerOption(context);
                                  }, icon: const Icon(Icons.add_a_photo)))
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),


                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40.0,
                      ),
                      child: TextFormField(
                        controller: nameController,
                        obscureText: false,
                        decoration: buildInputDecoration(
                            "assets/images/User-Outline.png", "any name"),
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
                        decoration: buildInputDecoration(
                            "assets/images/sms.png", "Email"),
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
                            prefixIcon: Image.asset(
                                "assets/images/Password.png"),
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
                          if (value!.isEmpty) {
                            return 'Please a Enter Password';
                          }
                          if (value.length < 10) {
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
                            prefixIcon: Image.asset(
                                "assets/images/Password.png"),
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
                          decoration: buildInputDecoration(
                              "assets/images/Call.png", "Phone Number"),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter phone no ';
                            }
                            if (value.length != 11) {
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
                          _register();
                          // print("successful");
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => Login()));
                          return;
                        } else {
                          print("UnSuccessfull");
                        }
                      },
                      text: "Register",
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
                        style: TextStyle(color: Color(0xffA1A8B0),
                            fontSize: 18),
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
    void showImagePickerOption(BuildContext context) {
      showModalBottomSheet(


          context: context, builder: (builder) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height / 4.5,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _pickImageFromGallery();
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Icon(Icons.image, size: 70,),
                          Text("Gallery")
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _pickImageFromCamera();
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Icon(Icons.camera_alt, size: 70,),
                          Text("Camera")
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
    }
//Gallery
    Future _pickImageFromGallery() async {
      final returnImage = await ImagePicker().pickImage(
          source: ImageSource.gallery);
      if (returnImage == null) return;
      setState(() {
        _image = File(returnImage.path);

      });
      Navigator.of(context).pop();
    }
    //camera
    Future _pickImageFromCamera() async {
      final returnImage = await ImagePicker().pickImage(
          source: ImageSource.camera);
      if (returnImage == null) return;
      setState(() {
      _image = File(returnImage.path);

      });
      Navigator.of(context).pop(); //close modal sheet
    }
  }
