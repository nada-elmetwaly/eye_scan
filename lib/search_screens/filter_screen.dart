import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import '../components/custom_chose_rate.dart';
import '../components/dropdownfield_component.dart';
import '../components/table_calender.dart';
import '../screens/search_screen.dart';
import '../widgets/price_time_widget.dart';
import '../widgets/reset_filter_widget.dart';
class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filter',
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
                MaterialPageRoute(builder: (context) => SearchScreen()));
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(

                left: 10,
              ),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        color: Color(0xFF73B8EB),
                        width: 1.0,
                      ))),
              child: Text(
                "Location",
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 20,
                  fontFamily: "myfont",
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 16,),
            DropDownField(),
            SizedBox(height: 20,),

            Container(
              padding: const EdgeInsets.only(

                left: 10,
              ),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Color(0xFF73B8EB),
                width: 1.0,
              ))),
              child: Text(
                "Rating",
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 20,
                  fontFamily: "myfont",
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ChooseRate(rate: '3.0'),
                  ChooseRate(rate: '3.5'),
                  ChooseRate(rate: '3.7'),
                  ChooseRate(rate: '4.0'),
                  ChooseRate(rate: '4.5'),
                  ChooseRate(rate: '5'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 24,
                left: 10,
              ),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Color(0xFF73B8EB),
                width: 1.0,
              ))),
              child: Text(
                "Schedule",
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 20,
                  fontFamily: "myfont",
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            TableCalander(),
            Container(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        color: Color(0xFF73B8EB),
                        width: 1.0,
                      ))),
              child: Text(
                "Choose time",
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 20,
                  fontFamily: "myfont",
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 16,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PriceWidget(data: '02:00 PM',width: 75, height: 31,),
                  PriceWidget(data: '03:00 PM',width: 75, height: 31,),
                  PriceWidget(data: '04:00 PM',width: 75, height: 31,),
                  PriceWidget(data: '05:00 PM',width: 75, height: 31,),
                  PriceWidget(data: '06:00 PM',width: 75, height: 31,),
                  PriceWidget(data: '07:00 PM',width: 75, height: 31,),

                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 15,
                left: 10,
              ),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        color: Color(0xFF73B8EB),
                        width: 1.0,
                      ))),
              child: Text(
                "Price",
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 20,
                  fontFamily: "myfont",
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),

            ),
            SizedBox(height: 16,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PriceWidget(data: '20\$',width: 54, height:26,),
                  PriceWidget(data: '50\$',width: 54, height:26,),
                  PriceWidget(data: '100\$',width: 54, height:26,),
                  PriceWidget(data: '170\$',width: 54, height:26,),
                  PriceWidget(data: '180\$',width: 54, height:26,),
                  PriceWidget(data: '200\$',width: 54, height:26,),

                ],
              ),

            ),
            Container(
              padding: const EdgeInsets.only(
                top: 15,
                left: 10,
              ),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        color: Color(0xFF73B8EB),
                        width: 1.0,
                      ))),
              child: Text(
                "Type",
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 20,
                  fontFamily: "myfont",
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),

            ),
            SizedBox(height: 16,),
            Row(children: [
              PriceWidget(data: 'Offline',width: 96,height: 31,),
              PriceWidget(data: 'Online',width: 96,height: 31,)
            ],),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ResetFilter(data: 'Reset Filter'),
                ResetFilter(data: 'Search'),
              ],
            ),
            SizedBox(height: 34,)







          ],
        ),
      ),
    );
  }
}
