import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart'as http;
import '../components/custom_field.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<UserProfile> {
  Uint8List? _image;
  File? selectedimg;
  String dropdownvalue = 'one';
  String? email = "";
  String? phone = "";
  String? name = "";
  late String token="";
  Future<void> getEmail() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    email = prefs.getString('email') ?? '';
    setState(() {});
  }

  Future<void> getName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    name = prefs.getString('signUser') ?? '';
    setState(() {});
  }

  Future<void> getPhone() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    phone = prefs.getString('phone') ?? '';
    setState(() {});
  }
  Future<void> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    token= prefs.getString('authtoken') ?? '';
    setState(() {});
    await updateUserProfile(token);
  }
  Future<void> updateUserProfile(String token) async {
    final apiUrl = 'https://your-api-url.com/update_profile.php'; // Replace with your actual API URL
    final updatedData = {
      'education': 'Bachelor of Science',
      'gender': 'Female',
      'birth_date': '1995-05-15',
      'about': 'Passionate developer and lifelong learner.',
    };

    try {
      final response = await http.post(Uri.parse(apiUrl), body: updatedData,headers: {
            'Authorization':
                'Bearer 28|Z65lUpvywD94CZTcogwEFawLQIIkzgWx2WHzSxSz494757ee'
          });
      if (response.statusCode == 200) {
        // Profile updated successfully
        print('Profile updated successfully');
      } else {
        // Handle error (e.g., display an error message)
        print('Error updating profile: ${response.body}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getEmail();
    getName();
    getPhone();
    getToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF333333),
          ),
        ),
        title: Text(
          'My Profile',
          style: TextStyle(color: Color(0xFF333333), fontFamily: 'myfont'),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assetes/PROFILE USER.png'),
                    backgroundColor: Colors.transparent,
                    radius: 100,
                  ),
                  Positioned(
                    top: 130,
                    left: 150,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xffF1F4F4),
                      child: IconButton(
                        onPressed: () {
                          _pickImageFromGallery();
                        },
                        icon: Icon(
                          Icons.camera_alt_outlined,
                          color: Color(0xff73B8EB),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF4F8F9),
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 327,
                height: 56,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      icon: Icon(Icons.person_2_outlined,
                          size: 20, color: Color(0xff787676)),
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                          fontFamily: "myfont",
                          fontSize: 14,
                          color: Color(0xff787676)),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 56,
                    width: 117,
                    decoration: BoxDecoration(
                      color: Color(0xffF4F8F9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: IntlPhoneField(
                      initialCountryCode: 'EG',
                      decoration: InputDecoration(),
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF4F8F9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    width: 202,
                    height: 56,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.phone_outlined,
                            size: 20,
                            color: Color(0xff787676),
                          ),
                          hintText: 'phone',
                          hintStyle: TextStyle(
                              fontFamily: "myfont",
                              fontSize: 14,
                              color: Color(0xff787676)),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF4F8F9),
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 327,
                height: 56,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.email_outlined,
                        size: 20,
                        color: Color(0xff787676),
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          fontFamily: "myfont",
                          fontSize: 14,
                          color: Color(0xff787676)),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF4F8F9),
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 327,
                height: 56,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      icon: Icon(Icons.calendar_month_outlined,
                          size: 20, color: Color(0xff787676)),
                      hintText: 'Date of Birth',
                      hintStyle: TextStyle(
                          fontFamily: "myfont",
                          color: Color(0xff787676),
                          fontSize: 14),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF4F8F9),
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 327,
                height: 56,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(top: 9),
                        child: DropdownButton<String>(
                          underline: Container(
                            color: Colors.white,
                          ),
                          value: dropdownvalue,
                          icon: Icon(
                            FontAwesomeIcons.angleDown,
                            color: Color(0xff787676),
                          ),
                          items: [
                            DropdownMenuItem<String>(
                                value: 'one',
                                child: Text(
                                  'man',
                                  style: TextStyle(color: Color(0xff787676)),
                                )),
                            DropdownMenuItem<String>(
                                value: 'two',
                                child: Text(
                                  'woman',
                                  style: TextStyle(color: Color(0xff787676)),
                                )),
                          ],
                          onChanged: (String? value) {
                            setState(() {
                              dropdownvalue = value!;
                            });
                          },
                        ),
                      ),
                      icon: Icon(
                        Icons.person_2_outlined,
                        size: 20,
                      ),
                      hintText: 'Gender',
                      hintStyle: TextStyle(
                          color: Color(0xff787676),
                          fontFamily: "myfont",
                          fontSize: 14),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'myfont'),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff73B8EB),
                      padding: const EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _pickImageFromCamera() async {
    final returnimg = await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnimg == null) return;
    setState(() {
      selectedimg = File(returnimg.path);
      _image = File(returnimg.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }
  Future _pickImageFromGallery()
  async {
    final returnimg=await ImagePicker().pickImage(source: ImageSource.gallery);
    if(returnimg==null)return;
    setState(() {
      selectedimg=File(returnimg.path);
      _image=File(returnimg.path).readAsBytesSync();
    });
  }
}
