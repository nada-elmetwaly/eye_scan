// ignore_for_file: prefer_const_constructors

import 'package:eye_scan/LoginScreensPatient/createPass.dart';
import 'package:eye_scan/LoginScreensPatient/widgets/common_text.dart';
import 'package:eye_scan/LoginScreensPatient/widgets/desc.dart';
import 'package:eye_scan/components/customButton.dart';
import 'package:flutter/material.dart';

class Reset extends StatefulWidget {
  const Reset({super.key});

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                  width: 25,
                ),
                CommonText(text: "Verification")
              ],
            ),
            SizedBox(
              height: 15,
            ),
           Description(text: "Enter code that we have sent to your number 389587249***"),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _textFieldOTP(first: true, last: false),
                SizedBox(
                  width: 10,
                ),
                _textFieldOTP(first: false, last: false),
                SizedBox(
                  width: 10,
                ),
                _textFieldOTP(first: false, last: false),
                SizedBox(
                  width: 10,
                ),
                _textFieldOTP(first: false, last: true),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            CustomButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CreatePass()));
                },
                text: "Verify") ,
                SizedBox(height: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't receive the code ? ",
                      style: TextStyle(
                        color: Color(0xff787876),
                        fontFamily: "myfont",
                        fontSize: 15,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          
                        },
                        child: Text(
                          " Resend",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff75C2F6),
                            fontFamily: "myfont",
                          ),
                        )),
                  ],
                ),
               

                
          ],
        ),
      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return Container(
      height: 70,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Color(0xff75C2F6)),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
