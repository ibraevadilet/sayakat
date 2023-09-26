import 'package:flutter/material.dart';
import 'package:sayakat/features/auto_mobiles/domain/car_model.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';

class CarCharacteristic extends StatelessWidget {
  const CarCharacteristic({super.key, required this.model});

  final CarModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: Text(
                'Марка',
                style: AppTextStyles.s15W600(color: AppColors.black),
              ),
            ),
            Expanded(
              child: Text(
                model.make,
                style: AppTextStyles.s15W600(color: AppColors.black),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: Text(
                'Модель',
                style: AppTextStyles.s15W600(color: AppColors.black),
              ),
            ),
            Expanded(
              child: Text(
                model.model,
                style: AppTextStyles.s15W600(color: AppColors.black),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: Text(
                'Год выпуска',
                style: AppTextStyles.s15W600(color: AppColors.black),
              ),
            ),
            Expanded(
              child: Text(
                '${model.year}',
                style: AppTextStyles.s15W600(color: AppColors.black),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: Text(
                'Тип кузова',
                style: AppTextStyles.s15W600(color: AppColors.black),
              ),
            ),
            Expanded(
              child: Text(
                'Внедорожник',
                style: AppTextStyles.s15W600(color: AppColors.black),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: Text(
                'Двигатель',
                style: AppTextStyles.s15W600(color: AppColors.black),
              ),
            ),
            Expanded(
              child: Text(
                '4.0 / бензин',
                style: AppTextStyles.s15W600(color: AppColors.black),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: Text(
                'Коробка передач',
                style: AppTextStyles.s15W600(color: AppColors.black),
              ),
            ),
            Expanded(
              child: Text(
                'Автомат',
                style: AppTextStyles.s15W600(color: AppColors.black),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: Text(
                'Привод',
                style: AppTextStyles.s15W600(color: AppColors.black),
              ),
            ),
            Expanded(
              child: Text(
                'Полный',
                style: AppTextStyles.s15W600(color: AppColors.black),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: Text(
                'Количество мест',
                style: AppTextStyles.s15W600(color: AppColors.black),
              ),
            ),
            Expanded(
              child: Text(
                '5',
                style: AppTextStyles.s15W600(color: AppColors.black),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
