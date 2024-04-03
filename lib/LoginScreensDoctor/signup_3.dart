// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:eye_scan/LoginScreensDoctor/login_d.dart';
import 'package:eye_scan/LoginScreensPatient/widgets/common_text.dart';
import 'package:eye_scan/components/customButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';

class SignUpThree extends StatefulWidget {
  const SignUpThree({super.key});

  @override
  State<SignUpThree> createState() => _SignUpThreeState();
}

class _SignUpThreeState extends State<SignUpThree> {
  File? _image ;
  String? email = "";
  String? phone = "";
  String? name = "";
  String? password = "";
  String? confirmPassword = "";
  String? yearOfExperience = "";
  String? fee = "";
  String? clinicLocation = "";

  Future<void> getEmail() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    email = prefs.getString('email') ?? '';
    setState(() {});
  }
  Future<void> getPhone() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    phone = prefs.getString('phone') ?? '';
    setState(() {});
  }
  Future<void> getName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    name = prefs.getString('name') ?? '';
    setState(() {});
  }
  Future<void> getPassword() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    password = prefs.getString('password') ?? '';
    setState(() {});
  }
  Future<void> getConfirmPassword() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    confirmPassword = prefs.getString('confirmPassword') ?? '';
    setState(() {});
  }
  Future<void> getYearOfExperience() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    yearOfExperience= prefs.getString('yearOfExperience') ?? '';
    setState(() {});
  }
  Future<void> getFee() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    fee= prefs.getString('fee') ?? '';
    setState(() {});
  }
  Future<void> getClinicLocation() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    clinicLocation= prefs.getString('clinicLocation') ?? '';
    setState(() {});
  }
  Future <void> _register() async {
    final
    url = 'https://laravel.investtradegm.com/api/doctor/register';

    var
    request = http.MultipartRequest('POST', Uri.parse(url));
    request.fields['name'] = name!;
    request.fields['email'] = email!;
    request.fields['phone'] = phone!;
    request.fields['password'] = password!;
    request.fields['confirm_password'] = confirmPassword!;
    request.fields['experience'] = yearOfExperience!;
    request.fields['location'] = clinicLocation!;
    request.fields['fees'] = fee!;
    request.files.add(await http.MultipartFile.fromPath('image', _image!.path));

    var
    response = await request.send();

    if (response.statusCode == 200) {
      print('Registration successful');
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginD()));
    } else {
      print('Failed to register. Error: ${response.reasonPhrase}');
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getConfirmPassword();
    getPassword();
    getClinicLocation();
    getEmail();
    getFee();
    getName();
    getPhone();
    getYearOfExperience();
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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
                          percent: 1,
                          barRadius: Radius.circular(16),
                          progressColor: Color(0xff75C2F6),
                          backgroundColor: Color(0xffDADADA),
                          width: 372,
                        ),
                      ) ,
                      SizedBox(height: 10,) , 
                      Text("3/3" , style: TextStyle(
                        fontSize: 15 , 
                        fontWeight: FontWeight.bold
                      ),) ,
                      SizedBox(height: 112,) ,
                      InkWell(
                        onTap: (){
                          _pickImageFromGallery() ;
                        },
                        child:  Stack(
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
                      ) ,
                      SizedBox(height: 50,), 
                      Padding(
                        padding: EdgeInsets.only(left: 25  ,right: 30),
                        child: Text("Upload photo of your professional practice license " , style: TextStyle(
                          color: Color(0xff787676) , 
                          fontSize: 18 , 
                          fontFamily: "myfont"
                        ),),
                      ) ,
                      SizedBox(height: 190,) ,
          
                      CustomButton(text: "Confirm", onPressed: (){
                        print(phone);
                        print(name);
                        print(fee);
                        print(yearOfExperience);
                        print(password);
                        print(confirmPassword);
                        print(email);
                        print(clinicLocation);
                        _register();
                      }) ,
                      _image == null? Container() : Image.file(_image! , height: 300, width: 300,)
            ],
          ),
        ),
      ),
    );
  }
  Future _pickImageFromGallery() async {
    final returnImage = await ImagePicker().pickImage(
        source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      _image = File(returnImage.path);

    });
    Navigator.of(context).pop();
  }
  Future _pickImageFromCamera() async {
    final returnImage = await ImagePicker().pickImage(
        source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      _image = File(returnImage.path);

    });
    Navigator.of(context).pop(); //close modal sheet
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
}