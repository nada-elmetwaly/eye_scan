import 'package:eye_scan/HistoryScreensD/tabbar_screen.dart';
import 'package:flutter/material.dart';

class HistoryBox extends StatefulWidget {
  const HistoryBox({
    super.key,
    required this.img,
    required this.name,
    required this.disease,
  });

  final String img;
  final String name;
  final String disease;

  @override
  State<HistoryBox> createState() => _HistoryBoxState();
}

class _HistoryBoxState extends State<HistoryBox> {
  


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Appointment()));
      },
      child: Container(
        height: 63,
        width: 350, 
        decoration: ShapeDecoration(
          color: Color(0xffFBFDFD) , 
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.5 , color: Color(0xffC2D6FF) ) ,
            borderRadius: BorderRadius.circular(5)
          ), 
           
          
          ),
          child: Stack(
        children: [
           
          Positioned(
            
            top: 4,
            bottom: 3,
            left: 9,
            child: Image(image: AssetImage(widget.img))
          ) , 
          Positioned(
            left: 100,
            top: 9,
            child: Text(
              widget.name , style: TextStyle(
              color: Color(0xff333333) , 
              fontSize: 18 , 
              fontFamily: "myfont"
            ),)
            ) ,
            
            Positioned(
              left: 100,
              top: 33,
              child: Text(widget.disease , style: TextStyle(
                color: Color(0xffADADAD) , 
                fontFamily: "myfont" , 
                fontSize: 15
              ),) , 
              
              ) , 
              Positioned(
                left: 299,
                top: 5,
                child: IconButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Appointment()));
                  },
                   icon: Icon(Icons.arrow_forward_ios) ,
                   color: Color(0xff575757),
                   iconSize: 22,
                   )
                )
        ],
      ),
      
      ),
    );
  }
}