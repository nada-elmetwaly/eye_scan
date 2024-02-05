import 'package:eye_scan/components/AppoinmentCard.dart';
import 'package:eye_scan/components/Canceled%20Card.dart';
import 'package:eye_scan/components/maincolor.dart';
import 'package:flutter/material.dart';

class CanceledScreenDoctor extends StatefulWidget {
  const CanceledScreenDoctor({super.key});

  @override
  State<CanceledScreenDoctor> createState() => _CanceledScreenState();
}

class _CanceledScreenState extends State<CanceledScreenDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            width: 400,
            height: 55,
            child: Card(
              elevation: 1,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mic_none_outlined,
                          size: 28,
                          color: Color(0xff73B8EB),
                        ),
                      ),
                    ],
                  ),
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
                    icon: Icon(
                      Icons.search,
                      color: Color(0xff979797),
                    ),
                  ),
                  label: Text(
                    'Search',
                    style: TextStyle(
                        fontFamily: 'myfont',
                        color: Color(0xff979797)
                    ),
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(itemBuilder: (context,index)
              {
                return AppointmentCard(avatarColor: Color(0xffE90064), NameofPerson: 'Heba salah', Position:'first visiting', ImgPath: 'assetes/request card img.png', ButtonColor: maincolorblue, ButtonText: 'confirm', RequestStatus: 'canceled',);

              }),
            ),
          ),

        ],
      ),
    );
  }
}
