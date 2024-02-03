import 'package:eye_scan/components/completed%20card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompletedScreen extends StatefulWidget {
  const CompletedScreen({super.key});

  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              child: ListView.builder(itemBuilder: (context,index)
                  {
                    return CompletedCard();
              
                  }),
            ),
          ],
        ),
    ));
  }
}
