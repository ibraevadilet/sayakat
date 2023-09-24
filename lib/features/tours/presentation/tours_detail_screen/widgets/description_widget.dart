import 'package:flutter/material.dart';
import 'package:sayakat/features/tours/domain/tour_model.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key, required this.model});

  final TourModel model;

  @override
  Widget build(BuildContext context) {
    return Text(
      model.description,
      style: AppTextStyles.s15W600(
        color: AppColors.black,
      ),
    );
  }
}
