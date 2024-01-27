import 'package:eye_scan/payments/payment_methods_screen.dart';
import 'package:flutter/material.dart';

import '../components/shared_text.dart';
import '../search_screens/doctor_info_screen.dart';
import '../widgets/price_time_widget.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Appointment',
          style: TextStyle(
            color: Color(0xFF333333),
            fontSize: 24,
            fontFamily: 'myfont',
            fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: 2.40,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new), // Set the leading icon
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DocInfo()));
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12,),
          SharedText(text: 'Schedule'),
          SizedBox(height: 22,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PriceWidget(data: 'Saturday',width: 96,
                height: 31,size: 14,),
              SizedBox(width: 12,),
              PriceWidget(data: 'Sunday',width: 96,
                height: 31,size: 14,),
              SizedBox(width: 12,),
              PriceWidget(data: 'Monday',width: 96,
                height: 31,size: 14,),

            ],
          ),
          SizedBox(height: 22,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PriceWidget(data: 'Thursday',width: 96,
                height: 31,size: 14,),
              SizedBox(width: 12,),
              PriceWidget(data: 'Wednesday',width: 96,
                height: 31,size: 14,),
              SizedBox(width: 12,),
              PriceWidget(data: 'Tuesday',width: 96,
                height: 31,size: 14,),

            ],
          ),
          SizedBox(height: 32,),
          SharedText(text: 'Available time'),
          SizedBox(height: 16.5,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 12,),
                PriceWidget(data: '02:00 PM',size: 10,width: 75,
                  height: 31,),
                PriceWidget(data: '03:00 PM',size: 10,width: 75,
                  height: 31,),
                PriceWidget(data: '04:00 PM',size: 10,width: 75,
                  height: 31,),
                PriceWidget(data: '05:00 PM',size: 10,width: 75,
                  height: 31,),
                PriceWidget(data: '06:00 PM',size: 10,width: 75,
                  height: 31,),

              ],
            ),
          ),
          SizedBox(height: 24,),
          SharedText(text: 'Type'),
          SizedBox(height: 24,),
          Row(
            children: [
              SizedBox(width: 12,),
              PriceWidget(size: 16,data: 'Offline',width: 96,
                height: 31,),
              PriceWidget(size: 16,data: 'Online',width: 96,
                height: 31,),
            ],
          ),
          SizedBox(height: 24,),
          SharedText(text: 'Payment methods'),
          SizedBox(height: 16,),
          Row(
            children: [
              SizedBox(width:20 ,),
              Container(
                width: 327,
                height: 56,
                decoration: ShapeDecoration(
                  color: Color(0xFFF4F7F9),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFEAF6F6)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Choose payment method',
                      style: TextStyle(
                        color: Color(0xFF787676),
                        fontSize: 14,
                        fontFamily: 'myfont',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethods()));}, icon:Icon( Icons.arrow_forward_ios_outlined))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 60,),
          Center(
            child: GestureDetector(
             onTap: (){},
              child: Container(
                width: 327,
                height: 56,
                decoration: ShapeDecoration(
                  color: Color(0xFF73B8EB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Set appointment',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'myfont',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          )

        ],
      ),

    );
  }
}
