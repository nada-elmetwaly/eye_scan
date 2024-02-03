import 'package:flutter/material.dart';

class onBoardingContent extends StatelessWidget {
  
  final String img, title, description;
  const onBoardingContent({
    super.key,
    required this.title,
    required this.description,
    required this.img,
   
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
             
              SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(img ),
                      SizedBox(
                        height:32,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          fontFamily: "myfont",
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        description,
                        style: TextStyle(
                            fontFamily: "myfont",
                            fontSize: 14.5,
                            color: Colors.grey[600]),
                      ),
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Dotindicator extends StatelessWidget {
  const Dotindicator({
    this.isActive = false 
    
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: isActive? Color(0xff75C2F6) : Color(0xffD9D9D9),
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
    );
  }
}
