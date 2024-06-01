import 'package:flutter/cupertino.dart';

class ResetFilter extends StatelessWidget {
  const ResetFilter({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Container(
          width: 154,
          height: 56,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.50, color: Color(0xFF73B8EB)),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Center(
            child: Text(
              data,
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
    );
  }
}
