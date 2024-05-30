import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../components/custom_doc_search.dart';
import '../components/custom_rating.dart';
import '../components/rate_component.dart';
import '../dynamicPage.dart';
import '../search_screens/filter_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search',
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Test()));
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 295,
                    height: 40,
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
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                            icon: PhosphorIcon(
                              PhosphorIcons.magnifyingGlass(),
                              color: Color(0xFF979797),
                              size: 20,
                            ),
                          ),
                          label: Text(
                            'Search',
                            style: TextStyle(color: Color(0xff979797)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
               
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreen()));
                  },
                  icon: PhosphorIcon(
                    PhosphorIcons.slidersHorizontal(),
                    color: Color(0xFF73B8EB),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.only(
                bottom: 5,
                left: 10,
              ),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Color(0xFF73B8EB),
                width: 1.0,
              ))),
              child: Text(
                "Results",
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 16,
                  fontFamily: "myfont",
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            CustomDocSearch(img: 'assetes/doc1.png',name: 'Dr. Aaron',),
            CustomDocSearch(img: 'assetes/doc2.png',name: 'Dr. Lily',),
            CustomDocSearch(img: 'assetes/doc3.png',name: 'Dr. Asow',),
            CustomDocSearch(img: 'assetes/doc2.png',name: 'Dr. John',),
          ],
        ),
      ),
    );
  }

}
