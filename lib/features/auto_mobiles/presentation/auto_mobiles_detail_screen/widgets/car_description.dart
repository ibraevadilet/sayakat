import 'package:flutter/material.dart';
import 'package:sayakat/theme/app_text_styles.dart';

class CarDescription extends StatelessWidget {
  const CarDescription({super.key, required this.description});
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Описание:',
              style: AppTextStyles.s15W600(),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          description,
          style: AppTextStyles.s15W400(),
        ),
      ],
    );
  }
}
