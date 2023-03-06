import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/gen/assets.gen.dart';

import '../../../../utils/colors.dart';

class RatingBarWidget extends StatelessWidget {
  RatingBarWidget(
      {super.key,
      required this.title,
      required this.rating,
      this.initialRating});
  final String title;
  double? initialRating;
  final Function rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RatingBar(
          ratingWidget: RatingWidget(
            empty: Assets.pngs.worst.image(),
            full: Assets.pngs.best.image(),
            half: Assets.pngs.best.image(),
          ),
          initialRating: initialRating ?? 3,
          itemSize: 70.r,
          minRating: 1,
          itemPadding: EdgeInsets.all(4.w),
          direction: Axis.horizontal,
          itemCount: 5,
          glowRadius: 0.5,
          glowColor: AppColors.fontColorYellow,
          onRatingUpdate: (rating) {
            this.rating(rating);
          },
        ),
      ],
    );
  }
}
