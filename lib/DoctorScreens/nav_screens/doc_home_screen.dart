import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../components/circle-Profile.dart';
import '../../components/custom-button.dart';
import '../../components/rate_component.dart';

class DocHome extends StatefulWidget {
  const DocHome({super.key});

  @override
  State<DocHome> createState() => _DocHomeState();
}

class _DocHomeState extends State<DocHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 15, left: 40),
              child: Text(
                'Eye Link',
                style: TextStyle(
                  color: Color(0xFF73B8EB),
                  fontSize: 16,
                  fontFamily: "myfont",
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Container(
                    width: 295,
                    height: 40,
                    child: Card(
                      elevation: 1,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: TextFormField(
                        decoration: InputDecoration(

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: new BorderSide(
                              color: Colors.white,
                              width: 0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: new BorderSide(
                              color: Colors.white,
                              width: 0,
                            ),
                          ),
                          prefixIcon: IconButton(
                            onPressed: () {
                              ;
                            },
                            icon: PhosphorIcon(
                              PhosphorIcons.magnifyingGlass(),
                              color: Color(0xFF979797),
                              size: 20,
                            ),
                          ),
                          label: Text(
                            'Search',
                            style: TextStyle(color: Color(0xff979797)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width:2,
                ),
                PhosphorIcon(
                  PhosphorIcons.bell(),
                  color: Color(0xFF73B8EB),
                  size: 24,
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Center(
              child: Stack(
                  clipBehavior: Clip.none,
                children: [
                  Container(
                  width: 327,
                  height: 142,
                  decoration: BoxDecoration(
                    color: Color(0x5473B8EB),
                    borderRadius:BorderRadius.circular(16),

                  ),

                ),
                  Positioned(
                    left: 170,
                      top: -14,
                      child: Image(image: AssetImage('assetes/dr appiontment.png'))),
                  Positioned(
                    top: 30,
                    left: 12,
                    child: Column(
                      children: [
                        Text(
                          'Next Appointment with',
                          style: TextStyle(
                            color: Color(0xFF030303),
                            fontSize: 12,
                            fontFamily: 'myfont',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                          ),
                        ),
                        SizedBox(height:20),
                        Text(
                          'Anna at 3:00pm',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'myfont',
                            fontWeight: FontWeight.w600,
                            height: 0.06,
                          ),
                        ),
                        SizedBox(height:27),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            width: 93,
                            height: 26,
                            decoration: ShapeDecoration(
                              color: Color(0xFF73B8EB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Remind me later',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'myfont',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ]
              ),
            ),
            SizedBox(height: 33,),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 12),
              child: Text(
                'Daily report ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'myfont',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 86,
                  height: 46,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF73B8EB)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 2,),
                      PhosphorIcon(PhosphorIcons.eye(),color: Color(0xFF73B8EB),),
                      Text(
                        '100 Patients',
                        style: TextStyle(
                          color: Color(0xFF73B8EB),
                          fontSize: 10,
                          fontFamily: 'myfont',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 35,),
                Container(
                  width: 86,
                  height: 46,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF73B8EB)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 2,),
                      PhosphorIcon(PhosphorIcons.star(),color: Color(0xFF73B8EB),),
                      Text(
                        '4.5',
                        style: TextStyle(
                          color: Color(0xFF73B8EB),
                          fontSize: 10,
                          fontFamily: 'myfont',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 35,),
                Container(
                  width: 86,
                  height: 46,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF73B8EB)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 2,),
                      PhosphorIcon(PhosphorIcons.calendar(),color: Color(0xFF73B8EB),),
                      Text(
                        '20 appointments',
                        style: TextStyle(
                          color: Color(0xFF73B8EB),
                          fontSize: 10,
                          fontFamily: 'myfont',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 23,),
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Articles',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'myfont',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Color(0xFF73B8EB),
                      fontSize: 16,
                      fontFamily: 'myfont',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
           Container(
             height:600,
             child: ListView.separated(
                 itemCount: 10,

                 itemBuilder: (context,index){
               return Center(
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
               );
             },separatorBuilder:(context, index) {
           return SizedBox(height: 18,);
           },),
           ),


          ],
        ),
      ),
    );
  }
}
