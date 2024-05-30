import 'package:flutter/material.dart';

import '../../components/article_component.dart';
import '../nav_bar_screen.dart';

class AllArticles extends StatelessWidget {
  const AllArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text(
          'Articles',
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
                context, MaterialPageRoute(builder: (context) => DoctorNav()));
          },
        ),
      ),
      body: Column(
          children: [
            SizedBox(height: 32,),
      Expanded(
      child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(itemBuilder: (context,index)
      {
        return ArticleComponent();

      }),
    ),
    ),
    ]));
  }
}
