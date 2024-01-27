import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import '../components/custom_chose_rate.dart';
import '../components/dropdownfield_component.dart';
import '../components/shared_text.dart';
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
            SharedText(text: 'Location'),
            SizedBox(height: 18,),
            DropDownField(),
            SizedBox(height: 20,),

            SharedText(text: 'Rating'),
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
            SizedBox(height: 24,),
            SharedText(text: 'Schedule'),
            TableCalander(),
            SharedText(text: 'Choose time'),
            SizedBox(height: 16,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PriceWidget(data: '02:00 PM',width: 75, height: 31,size: 10,),
                  PriceWidget(data: '03:00 PM',width: 75, height: 31,size: 10,),
                  PriceWidget(data: '04:00 PM',width: 75, height: 31,size: 10,),
                  PriceWidget(data: '05:00 PM',width: 75, height: 31,size: 10,),
                  PriceWidget(data: '06:00 PM',width: 75, height: 31,size: 10,),
                  PriceWidget(data: '07:00 PM',width: 75, height: 31,size: 10,),

                ],
              ),
            ),
            SizedBox(height: 24,),
            SharedText(text: 'Price'),
            SizedBox(height: 16,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PriceWidget(data: '20\$',width: 54, height:26,size: 10,),
                  PriceWidget(data: '50\$',width: 54, height:26,size: 10,),
                  PriceWidget(data: '100\$',width: 54, height:26,size: 10,),
                  PriceWidget(data: '170\$',width: 54, height:26,size: 10,),
                  PriceWidget(data: '180\$',width: 54, height:26,size: 10,),
                  PriceWidget(data: '200\$',width: 54, height:26,size: 10,),

                ],
              ),

            ),
            SizedBox(height: 25,),
            SharedText(text: 'Type'),
            SizedBox(height: 16,),
            Row(children: [
              PriceWidget(data: 'Offline',width: 96,height: 31,size: 16),
              PriceWidget(data: 'Online',width: 96,height: 31,size: 16,)
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
