import 'package:flutter/material.dart';

import '../components/tip_component.dart';
import '../components/tip_info.dart';
import '../dynamicPage.dart';
import '../screens/home_screen.dart';
import '../screens/tips_screen.dart';

class GlacumaScreen extends StatelessWidget {
  const GlacumaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Glaucoma',
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
          TipComponent(img: 'assetes/glaucoma.png',width: 248,height: 248,),
          SizedBox(height: 30,),
          TipInfo(text: 'Get regular eye exams to detect glaucoma early and monitor its progression.',),
          SizedBox(height: 8,),
          TipInfo(text: 'Follow your doctor’s advice on using eye drops or other medications to lower your eye pressure.',),
          SizedBox(height: 8,),
          TipInfo(text: 'Eat a healthy diet rich in antioxidants, vitamins, minerals, and omega-3 fatty acids.',),
          SizedBox(height: 8,),
          TipInfo(text: 'Avoid smoking, excessive alcohol, caffeine, and trans fats, as they may worsen glaucoma.',),
          SizedBox(height: 8,),
          TipInfo(text: 'Exercise moderately and safely, as it may improve blood flow to the eyes and lower eye pressure.',),
          SizedBox(height: 8,),
          TipInfo(text: 'Protect your eyes from injury, infection, or inflammation, as they may trigger or worsen glaucoma.',),
          SizedBox(height: 8,),
          TipInfo(text: 'Seek support from your family, friends, or online communities if you have emotional or practical challenges due to glaucoma',),
          SizedBox(height: 34,),
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
                      fontFamily: 'Baloo Bhai 2',
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
