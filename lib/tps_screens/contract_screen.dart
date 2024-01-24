import 'package:flutter/material.dart';

import '../components/tip_component.dart';
import '../components/tip_info.dart';
import '../dynamicPage.dart';

class ContractScreen extends StatelessWidget {
  const ContractScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cataract',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF333333),
            fontSize: 24,
            fontFamily: 'Baloo Bhai 2',
            fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: 2.40,
          ),
        ),
        centerTitle: true,
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          TipComponent(img: 'assetes/lence.png',width: 248,height: 248,),
          SizedBox(height: 30,),
          TipInfo(text: 'You can choose the best lens for cataract surgery based on your vision goals, and budget.',),
          SizedBox(height: 8,),
          TipInfo(text: 'You can improve your vision before cataract surgery by using brighter lighting, anti-glare sunglasses and magnifying lenses.',),
          SizedBox(height: 8,),
          TipInfo(text: 'You can prevent cataract complications by managing your health conditions such as diabetes, high blood pressure or obesity.',),
          SizedBox(height: 215,),

          GestureDetector(
            onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>Test()));},
            child: Container(
                width: 327,
                height: 56,
                decoration: ShapeDecoration(
                  color: Color(0xFF73B8EB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Center(
                  child: Text('Back to home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "myfont",
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                )),
          )

        ],
      ),
    );
  }
}
