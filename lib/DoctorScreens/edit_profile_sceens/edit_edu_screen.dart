

import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'edit_profile_screen.dart';

class EditEduScreen extends StatefulWidget {
  const EditEduScreen({super.key});

  @override
  State<EditEduScreen> createState() => _EditEduScreenState();
}

class _EditEduScreenState extends State<EditEduScreen> {
  String dropdownvalue = 'one';
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
          'Education',
          style: TextStyle(color: Color(0xFF333333), fontFamily: 'myfont',fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: 2.40,),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Column(
          children: [
            Center(
              child: CountryCodePicker(
                initialSelection: 'Eg',
                showCountryOnly: true,
                showDropDownButton: true,
                showOnlyCountryWhenClosed: true,
                alignLeft: true,

              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
                          Icons.arrow_drop_down,
                          color: Color(0xff787676),
                        ),
                        items: [
                          DropdownMenuItem<String>(
                              value: 'one',
                              child: Text(
                                'Master',
                                style: TextStyle(color: Color(0xff787676)),
                              )),
                          DropdownMenuItem<String>(
                              value: 'two',
                              child: Text(
                                'Ph.D',
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

                    hintText: 'Degree',
                    hintStyle: TextStyle(
                        color: Color(0xFF263238),
                        fontSize: 16,
                        fontFamily: "myfont",
                        ),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
                          Icons.arrow_drop_down,
                          color: Color(0xff787676),
                        ),
                        items: [
                          DropdownMenuItem<String>(
                              value: 'one',
                              child: Text(
                                'Harvard',
                                style: TextStyle(color: Color(0xff787676)),
                              )),
                          DropdownMenuItem<String>(
                              value: 'two',
                              child: Text(
                                'Jhon',
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

                    hintText: 'University',
                    hintStyle: TextStyle(
                      color: Color(0xFF263238),
                      fontSize: 16,
                      fontFamily: "myfont",
                    ),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(height: 30,),

          ],
        ),
      ),


    );
  }
}
