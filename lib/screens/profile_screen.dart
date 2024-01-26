import 'package:eye_scan/components/ProfileItem.dart';
import 'package:eye_scan/screens/user_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>UserProfile()));
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
            Padding(
              padding: const EdgeInsets.only(left: 39),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assetes/Ellipse 64.png')),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                        ),
                      ],
                    ),
                  )
                ],
              ),
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
                onclick: () {},
                label: 'Appointment history',
                widthofarrow: 50,
              ),
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
                imagepath: 'assetes/record.png',
                onclick: () {},
                label: 'Records history',
                widthofarrow: 100,
              ),
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
                imagepath: 'assetes/notifi.png',
                onclick: () {},
                label: 'Notification',
                widthofarrow: 135,
              ),
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
              height: 60,
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
            )
          ],
        ),
      ),
    );
  }
}
