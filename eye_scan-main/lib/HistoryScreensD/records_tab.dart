import 'package:eye_scan/HistoryScreensD/components/recordCard.dart';
import 'package:eye_scan/components/historyCard.dart';
import 'package:flutter/material.dart';

class RecordsTab extends StatelessWidget {
  const RecordsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         RecordCard()
        ],
      ),
    );
  }
}