import 'package:flutter/material.dart';

InputDecoration buildInputDecoration(String icons,String hinttext) {
    return InputDecoration(
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
                        prefixIcon: (
                         
                         Image.asset(icons)
                        ),
                        hintText: hinttext,
                        hintStyle:
                            TextStyle(fontFamily: "myfont", fontSize: 17),
                        filled: true,
                        fillColor: Color(0xffF3F3F3));
  }