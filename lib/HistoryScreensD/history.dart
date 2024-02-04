import 'package:eye_scan/HistoryScreensD/components/history_box.dart';
import 'package:flutter/material.dart';

class Historyd extends StatelessWidget {
  
  const Historyd({super.key ,});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                      width:80,
                    ),
                    Text("History" , style: TextStyle(
                      fontSize: 29 , fontFamily: "myfont" , letterSpacing: 1.5
                      ),)
                    
                  ],
                ),
                SizedBox(height: 60,) , 
                HistoryBox(img: "assets/images/Ellipse 70.png", name: "Salma Omar", disease: "Glocuma") ,
                SizedBox(height: 18,) ,
                
                HistoryBox(img: "assets/images/Ellipse 70.png", name: "Salma Omar", disease: "Glocuma") ,
                SizedBox(height: 18,) , 
                HistoryBox(img: "assets/images/Ellipse 70.png", name: "Salma Omar", disease: "Glocuma") ,
                SizedBox(height: 18,) , 
                HistoryBox(img: "assets/images/Ellipse 70.png", name: "Salma Omar", disease: "Glocuma") ,
                 
                
          
                
                
            ],
          ),
        ),
      ),
    );
  }
}

