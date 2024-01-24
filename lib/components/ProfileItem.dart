import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileItem extends StatelessWidget {
  double?widthofarrow;
  String? imagepath;
  final String?label;
  final void Function()? onclick;
    ProfileItem({super.key,required this.imagepath,required this.onclick,required this.label,required this.widthofarrow});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              width: 24,
              height: 24,
              image: AssetImage(imagepath!),

            ),

            Text(
              label!,
              style: TextStyle(
                  fontSize:21,
                  color: Color(0xff575757),
                  fontFamily: 'myfont'),
            ),
            SizedBox(width:widthofarrow,),
            Icon(Icons.arrow_forward_ios,color:Color(0xff575757)   ,),
          ],
        ),
      ),
    );
  }
}
