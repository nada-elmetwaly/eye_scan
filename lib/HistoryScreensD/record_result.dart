import 'package:flutter/material.dart';

class RecordResult extends StatelessWidget {
  const RecordResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(

            mainAxisSize: MainAxisSize.min,
            children: [

              SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios)),
                    SizedBox(
                      width:80,
                    ),
                    Text("Result" , style: TextStyle(
                      fontSize: 29 , fontFamily: "myfont" , letterSpacing: 1.5
                      ),)
                    
                  ]),
                  SizedBox(height: 30,) ,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/images/ret 1.png')),
                ],
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Text('The Result',style: TextStyle(
                      color: Colors.black , 
                      fontSize: 25, 
                      fontFamily: "myfont"
                    )),
                  ],
                ),
              ),
              SizedBox(height: 18,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        
                        'Worem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti .Worem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti .',style: TextStyle(
                        
                        fontFamily: 'myfont',
                        height: 1.8,
                        fontSize: 13,
                        fontWeight: FontWeight.bold , 
                        color: Color(0xff787676)
                      ),),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
