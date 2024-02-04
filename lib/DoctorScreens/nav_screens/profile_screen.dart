import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../components/ProfileItem.dart';
import '../../patientScreen/historyscreens/Record_screen.dart';
import '../../patientScreen/historyscreens/appointmentscreen.dart';
import '../Schedule_Screen/Edit_Schedule.dart';
import '../edit_profile_sceens/edit_profile_screen.dart';

class DocProfileScreen extends StatefulWidget {
  const DocProfileScreen({super.key});

  @override
  State<DocProfileScreen> createState() => _DocProfileScreenState();
}

class _DocProfileScreenState extends State<DocProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Profile',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontFamily: 'myfont'),
        ),
        actions: [
          InkWell(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DocEditProfile()));
            },
            child: Image(
                width: 50, height: 50, image: AssetImage('assetes/user-edit.jpg')),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assetes/Ellipse 64.png')),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Dr.Sam',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'ANYNAME@gmail.com',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'myfont',
                          color: Color(0xff979797)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              indent: 35,
              endIndent: 35,
              color: Color(0xffD9DADA),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27),
              child: ProfileItem(
                imagepath: 'assetes/solar_battery-low-outline.jpg',
                onclick: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HistoryAppointPage()));
                },
                label: 'Appointment history',
                widthofarrow: 50,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27),
              child: ProfileItem(
                imagepath: 'assetes/record.png',
                onclick: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RecordScreen()));
                },
                label: 'Records history',
                widthofarrow: 100,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27),
              child: ProfileItem(
                imagepath: 'assetes/notifi.png',
                onclick: () {},
                label: 'Notification',
                widthofarrow: 135,
              ),
            ),
            SizedBox(
              height: 5,
            ),

            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: GestureDetector(
                onTap: (){ Navigator.push(
                    context, MaterialPageRoute(builder: (context) => EditSchedule()));},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    PhosphorIcon(
                      PhosphorIcons.calendarPlus(),
                      color: Color(0xff73B8EB),
                    ),
                    SizedBox(width: 7,),
                    Text(
                      ' Schedule management ',
                      style: TextStyle(
                        color: Color(0xFF575757),
                        fontSize: 18,
                        fontFamily: 'myfont',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    SizedBox(width: 99,),
                    Icon(Icons.arrow_forward_ios_outlined,color: Color(0xFF575757) ,),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 42,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(image: AssetImage('assetes/logout.png')),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){},
                    child: Text(
                      'Log out',
                      style: TextStyle(
                          color: Color(0xffE90064),
                          fontFamily: 'myfont',
                          fontSize: 18
                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
