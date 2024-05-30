import 'package:flutter/material.dart';

import '../components/shared_text.dart';
import 'appointment_screen.dart';
import 'new_card_screen.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  int _type = 1;
  void _handleRadio(Object? e) => setState(() {
        _type = e as int;
      });
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment',
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
                MaterialPageRoute(builder: (context) => AppointmentScreen()));
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 12,
          ),
          SharedText(text: 'Payment methods'),
          SizedBox(
            height: 30,
          ),
          Container(
            width: size.width,
            height: 55,
            margin: EdgeInsets.only(right: 20,left: 20),
            decoration: BoxDecoration(
              border: _type == 1
                  ? Border.all(width: 1, color: Color(0xFF73B8EB))
                  : Border.all(width: 0.3, color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
              color: Colors.transparent,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: _type,
                          onChanged: _handleRadio,
                          activeColor: Color(0xFF73B8EB),
                        ),
                        Text(
                          'Cash ',
                          style: _type==1 ? TextStyle(
                            color: Color(0xFF575757),
                            fontSize: 16,
                            fontFamily: 'myfont',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ):TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontFamily: 'myfont',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          )
                        ),

                      ],
                    ),
                    Image.asset('assetes/cash 1.png'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: size.width,
            height: 55,
            margin: EdgeInsets.only(right: 20,left: 20),
            decoration: BoxDecoration(
              border: _type == 2
                  ? Border.all(width: 1, color: Color(0xFF73B8EB))
                  : Border.all(width: 0.3, color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
              color: Colors.transparent,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          groupValue: _type,
                          onChanged: _handleRadio,
                          activeColor: Color(0xFF73B8EB),
                        ),
                        Text(
                            'Pay via visa',
                            style: _type==2 ? TextStyle(
                              color: Color(0xFF575757),
                              fontSize: 16,
                              fontFamily: 'myfont',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ):TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontFamily: 'myfont',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            )
                        ),

                      ],
                    ),
                    Image.asset('assetes/16 1.png'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: size.width,
            height: 55,
            margin: EdgeInsets.only(right: 20,left: 20),
            decoration: BoxDecoration(
              border: _type == 3
                  ? Border.all(width: 1, color: Color(0xFF73B8EB))
                  : Border.all(width: 0.3, color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
              color: Colors.transparent,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 3,
                          groupValue: _type,
                          onChanged: _handleRadio,
                          activeColor: Color(0xFF73B8EB),
                        ),
                        Text(
                            'Pay via master card',
                            style: _type==3 ? TextStyle(
                              color: Color(0xFF575757),
                              fontSize: 16,
                              fontFamily: 'myfont',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ):TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontFamily: 'myfont',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            )
                        ),

                      ],
                    ),
                    Image.asset('assetes/Master card 1.png',),

                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 68,),
          Center(
            child: GestureDetector(
             onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>NewCard()));},
              child: Container(
                width: 327,
                height: 56,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Color(0xFF73B8EB)),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Add new card',
                    style: TextStyle(
                      color: Color(0xFF73B8EB),
                      fontSize: 16,
                      fontFamily: 'myfont',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 8,),
          Center(
            child: GestureDetector(
              onTap: (){},
              child: Container(
                width: 327,
                height: 56,
                decoration: ShapeDecoration(
                  color:  Color(0xFF73B8EB),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Color(0xFF73B8EB)),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Confirm',
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
          ),
        ],
      ),
    );
  }
}
