import 'dart:convert';


import 'package:eye_scan/LoginScreensDoctor/login_d.dart';
import 'package:eye_scan/providers/authtokeenprovider.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../HistoryScreensD/history.dart';
import '../../components/ProfileItem.dart';
import '../../patientScreen/historyscreens/Record_screen.dart';
import '../../patientScreen/historyscreens/appointmentscreen.dart';
import '../Schedule_Screen/Doctor_Schedule.dart';
import '../Schedule_Screen/Edit_Schedule.dart';
import '../edit_profile_sceens/edit_profile_screen.dart';
import 'package:http/http.dart' as http;

class DocProfileScreen extends StatefulWidget {

  const DocProfileScreen({super.key});

  @override
  State<DocProfileScreen> createState() => _DocProfileScreenState();
}

class _DocProfileScreenState extends State<DocProfileScreen> {

  late  String? _doctorName="";
  late  String? _userEmail="";
  late String? _imgLink="";
   dynamic _doctorId="";
late String token="";
  Future<void> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    token= prefs.getString('authtoken') ?? '';
    setState(() {});
    await fetchProfile(token);
  }

  Future<void> fetchProfile(String token) async {

    Uri url = Uri.parse('https://laravel.investtradegm.com/api/doctor/profile');
    final response = await http.get(url, headers: {
      "Authorization":"Bearer $token"
    });

    if (response.statusCode == 200) {

      Map<String, dynamic> profileData = json.decode(response.body);
      setState(() {

        _doctorName=profileData["data"][0]["name"];
        _userEmail=profileData["data"][0]["email"];
        _doctorId=profileData["data"][0]["id"];
        _imgLink=profileData["data"][0]["image"];
      });
    } else {
      throw Exception('Failed to load profile data');
    }
  }




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getToken();
    fetchProfile(token);
  }

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
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DocEditProfile()));
            },
            child: Image(
                width: 50,
                height: 50,
                image: AssetImage('assetes/user-edit.jpg')),
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
                    backgroundImage: NetworkImage('https://laravel.investtradegm.com$_imgLink')),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      _doctorName!,
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
                      _userEmail!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'msfont',
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HistoryAppointPage()));
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Historyd()));
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
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: ProfileItem(
                imagepath: 'assetes/schedule.png',
                onclick: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DoctorSchedule()));
                },
                label: 'Schedule Management',
                widthofarrow: 20,
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
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginD()));

                    },
                    child: Text(
                      'Log out',
                      style: TextStyle(
                          color: Color(0xffE90064),
                          fontFamily: 'myfont',
                          fontSize: 18),
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
