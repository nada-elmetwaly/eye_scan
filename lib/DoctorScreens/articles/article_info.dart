import 'package:flutter/material.dart';

import 'all_articles_screen.dart';

class ArticleInfo extends StatelessWidget {
  const ArticleInfo({super.key});

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
                context, MaterialPageRoute(builder: (context) => AllArticles()));
          },
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 44,),
            Container(
              width: 332,
              height: 256,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage('assetes/gg.png'),
                  fit: BoxFit.cover,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            SizedBox(height: 19,),
            Text(
              'Development of glaucoma ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'myfont',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            SizedBox(height: 4,),
            SizedBox(
              width: 329,
              height: 226,
              child: Text(
                'Glaucoma is a group of eye conditions that damage the optic nerve. The optic nerve sends visual information from your eye to your brain and is vital for good vision. Damage to the optic nerve is often related to high pressure in your eye. But glaucoma can happen even with normal eye pressure.\nGlaucoma can occur at any age but is more common in older adults. It is one of the leading causes of blindness for people over the age of 60.\nMany forms of glaucoma have no warning signs. The effect is so gradual that you may not notice a change in vision until the condition is in its later stages.\n.',
                style: TextStyle(
                  color: Color(0xFF787676),
                  fontSize: 11,
                  fontFamily: 'myfont',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
