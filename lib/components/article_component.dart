import 'package:flutter/material.dart';

import '../DoctorScreens/articles/article_info.dart';

class ArticleComponent extends StatelessWidget {
  const ArticleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ArticleInfo()));},
          child: Stack(
              children: [Container(
                width: 340,
                height: 69,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 10.90,
                      offset: Offset(2, -1),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
                Container(
                  width: 89,
                  height: 71,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assetes/R 1.png'),
                      fit: BoxFit.cover,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left:100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8,),
                      Text(
                        'Development of glaucoma ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'myfont',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 4,),
                      SizedBox(
                        width: 190,
                        height: 27,
                        child: Text(
                          'Glaucoma is a group of eye conditions that damage the optic nerve.....',
                          style: TextStyle(
                            color: Color(0x8C7A7A7A),
                            fontSize: 8,
                            fontFamily: 'myfont',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      )
                    ],
                  ),
                )



              ]
          ),
        ),
        SizedBox(height: 18,)
      ],
    );
  }
}
