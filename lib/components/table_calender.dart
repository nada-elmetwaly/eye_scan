import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalander extends StatelessWidget {
  const TableCalander({super.key});

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: DateTime.now(),
      firstDay: DateTime.utc(2012, 5, 6),
      lastDay: DateTime.utc(2040, 5, 6),
      headerStyle: HeaderStyle(titleTextStyle: TextStyle(color: Color(0xFF73B8EB),
        fontSize: 14,
        fontFamily: 'myfont',
        fontWeight: FontWeight.w700,
        height: 0.08,),
          formatButtonVisible: false,
          leftChevronVisible: false,
          rightChevronIcon: Icon(Icons.arrow_forward_ios_outlined,color:Color(0xFF73B8EB) ,size: 20,),
          titleCentered: true


      ),
      calendarStyle: CalendarStyle(todayDecoration: BoxDecoration(color: Color(0xFF73B8EB),borderRadius: BorderRadius.circular(29)),
          tablePadding: EdgeInsets.only(left: 8,right: 8)
      ),
    );
  }
}
