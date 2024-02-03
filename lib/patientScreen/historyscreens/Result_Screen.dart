import 'package:eye_scan/components/maincolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        automaticallyImplyLeading: false,

        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xff333333),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              width: 120,
            ),
            Text(
              'Result',
              style: TextStyle(
                fontFamily: 'myfont',
                color: Color(0xff333333),
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assetes/resut xray img.png')),
                ],
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                Text('The Result',style: TextStyle(fontSize: 24,fontFamily: 'myfont',color: Colors.black)),
              ],
              ),
              SizedBox(height: 18,),
              Row(
                children: [
                  Expanded(
                    child: Text(
        
                      'Worem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti .Worem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti .',style: TextStyle(
                      color: maincolorgrey,
                      fontFamily: 'myfont',
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                    ),),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
