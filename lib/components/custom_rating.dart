import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingComponent extends StatelessWidget {
  const RatingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        starRate()
      ],
    );
  }
  starRate() {
    return RatingBar.builder(
      itemSize: 15,
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,

      ),
      onRatingUpdate: (rating) => debugPrint(rating.toString()),
    );
  }
}
