import 'package:flutter/material.dart';

import '../new_card_screen.dart';

class FailureScreen extends StatelessWidget {
  const FailureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 80,),
            Center(
              child: Container(
                width: 327,
                height: 286,
                decoration: ShapeDecoration(
                  color: Color(0x2D75C2F6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image:AssetImage('assetes/error.png'),),
                    Text(
                      'Error',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'myfont',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      width:200,
                      child: Text(
                        'Lorem tempor incididunt ut labore et dolore magnavgfuijascij aliqua, ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF787878),
                          fontSize: 14,
                          fontFamily: 'myfont',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 32,),
            GestureDetector(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>NewCard()));},
              child: Container(
                width: 327,
                height: 56,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Color(0xFF75C2F6)),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: Color(0xFF73B8EB),
                ),
                child: Center(
                  child: Text(
                    'Back',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'myfont',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
