import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../search_screens/doctor_info_screen.dart';
import 'custom_rating.dart';

class CustomDocSearch extends StatelessWidget {
  const CustomDocSearch({super.key, required this.img, required this.name});
  final String img;
  final String name;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14,bottom: 32),
      child: GestureDetector(
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DocInfo()));},
        child: Stack(
          children: [
            Container(
              width: 338.73,
              height: 103.91,
              decoration: ShapeDecoration(
                  color: Color(0xFFFBFDFD),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFFB8DFE1)),
                    borderRadius: BorderRadius.circular(5),
                  )
              ),
              child: Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.31),
                  child: Column(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 14,
                          fontFamily: 'myfont',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      SizedBox(height:2.08 ,),
                      Text(
                        'Eye diseases',
                        style: TextStyle(
                          color: Color(0xFF787878),
                          fontSize: 10,
                          fontFamily: 'myfont',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),



                    ],
                  ),
                ),
              ),
            ),
            Stack(
                clipBehavior: Clip.none,
                children: [Container(
                  width: 139.23,
                  height: 103.91,
                  decoration: BoxDecoration(
                    color: Color(0xFFEDF1F1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                    ),
                  ),

                ),
                  Positioned(
                    bottom: -40,
                    right: 30,
                    child: Image(
                      width: 84,
                      image: AssetImage(
                        img,
                      ),
                      height: 200,
                    ),
                  )]
            ),
            Positioned(
              left:144,
              bottom: 40,
              child: RatingComponent(),
            ),
            Positioned(
              left:130,
              bottom: 4,
              child: IconButton(
                onPressed: () {
                  ;
                },
                icon: PhosphorIcon(
                  PhosphorIcons.mapPin(),
                  color: Color(0xFF73B8EB),
                  size: 20,
                ),
              ),
            ),
            Positioned(
              left:170,
              bottom: 25,
              child: Text(
                'Mansoura, Egypt ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF73B8EB),
                  fontSize: 8,
                  fontFamily: 'Baloo Bhai 2',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 0.56,
                ),
              ),
            ),
            Positioned(
                top: 9,
                right: 10,

                child: Text(
                  '\$20',
                  style: TextStyle(
                    color: Color(0xFF73B8EB),
                    fontSize: 14,
                    fontFamily: 'myfont',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
