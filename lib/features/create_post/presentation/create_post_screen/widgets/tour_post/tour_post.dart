import 'package:flutter/material.dart';
import 'package:sayakat/features/create_post/presentation/create_post_screen/widgets/tour_post/widgets/date_widget.dart';
import 'package:sayakat/features/tours/presentation/tours_main_screen.dart/widgets/category_widget.dart';
import 'package:sayakat/widgets/custom_text_fields.dart';

class TourPost extends StatelessWidget {
  const TourPost({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          hintText: 'Название тура',
        ),
        SizedBox(height: 12),
        CustomTextField(
          hintText: 'Расстояние в км',
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 12),
        CustomTextField(
          hintText: 'Описание',
        ),
        SizedBox(height: 12),
        DateWidget(),
        SizedBox(height: 12),
        CustomTextField(
          hintText: 'Цена',
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 12),
        Text('Категории'),
        SizedBox(height: 5),
        CategoryWidget(),
      ],
    );
  }
}
