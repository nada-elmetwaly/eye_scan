// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:eye_scan/HistoryScreensD/record_result.dart';
import 'package:flutter/material.dart';

class RecordCard extends StatelessWidget {
  const RecordCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 25),
      child: Container(
        width: 355,
        height: 122,
        decoration: BoxDecoration(
            color: Color(0xffFBFDFD),
            border: Border.all(color: Color(0xff73B8EB)),
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          children: [
            Image(image: AssetImage('assetes/xray.png')),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Glaucuma',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'myfont'),
                          ),
                          Text(
                            'upload in 2-11  at 11:12 pm',
                            style: TextStyle(
                                color: Color(0xff787878),
                                fontSize: 12,
                                fontFamily: 'myfont'),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 92,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RecordResult()));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff75C2F6)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 9, vertical: 5)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4))),
                        ),
                        child: Text(
                          "See Details",
                          style: TextStyle(
                              fontSize: 15.5,
                              color: Color(0xffFFFFFF),
                              fontFamily: "myfont"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
