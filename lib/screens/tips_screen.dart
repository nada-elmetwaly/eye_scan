import 'package:flutter/material.dart';

import '../components/tip_component.dart';
import '../tps_screens/contract_screen.dart';
import '../tps_screens/glacuma_screen.dart';

class tipsScreen extends StatelessWidget {
  const tipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25,bottom: 40),
            child: Center(
              child: Text(
                'Tips',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 24,
                  fontFamily: "myfont",
                  fontWeight: FontWeight.w700,
                  height: 0,
                  letterSpacing: 2.40,
                ),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>GlacumaScreen()));},
                  child: TipComponent(img: 'assetes/glaucoma.png',width: 134,height: 134,)),
              SizedBox(width: 30,),
              GestureDetector(
                  onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>ContractScreen()));},
                  child: TipComponent(img: 'assetes/lence.png',width: 134,height: 134,)),
            ],
      ),
          SizedBox(height: 30,),
          TipComponent(img: 'assetes/twodiabet.jpg',width: 291,height: 134,),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TipComponent(img: 'assetes/hg.jpg',width: 134,height: 134,),
              SizedBox(width: 30,),
              TipComponent(img: 'assetes/mayob.png',width: 134,height: 134,),
            ],
          ),
        ]),
    )
    );}
}
