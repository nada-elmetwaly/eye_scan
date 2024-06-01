import 'package:eye_scan/components/maincolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../patientScreen/historyscreens/Result_Screen.dart';

class HistoryCard extends StatefulWidget {
  const HistoryCard({super.key});

  @override
  State<HistoryCard> createState() => _HistoryCardState();
}

class _HistoryCardState extends State<HistoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
      child: Container(
        width: 330,
        height: 119,
        decoration: BoxDecoration(
            color: Color(0xffFBFDFD),
            border: Border.all(color: Color(0xff73B8EB)),
          borderRadius: BorderRadius.circular(16)
      
        ),
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
                            'Diabtic',
                            style: TextStyle(
                                color: Colors.black, fontSize: 12, fontFamily: 'myfont'),
                          ),
                          Text(
                            'upload in 2-12  at 10:32 pm',
                            style: TextStyle(
                                color: maincolorgrey, fontSize: 12, fontFamily: 'myfont'),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(width: 60,),
                      Container(
                        width: 110,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(16) ,
                            border: Border.all(
                                color: Colors.blue
                            )
                        ),
                        child: MaterialButton(onPressed: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen()));
                        },
                          child:
                          Text(
                            'See Details',
                            style: TextStyle(
                              color: maincolorblue,
                              fontSize: 12,
                              fontFamily: "myfont",
                              fontWeight: FontWeight.w700,

                            ),
                          ),
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
