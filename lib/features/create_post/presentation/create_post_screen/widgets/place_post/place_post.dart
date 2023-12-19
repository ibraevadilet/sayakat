import 'package:flutter/material.dart';
import 'package:sayakat/features/places/presentation/plases_main_screen/widgets/region_drop_down_button.dart';
import 'package:sayakat/widgets/custom_text_fields.dart';

class PlacePost extends StatelessWidget {
  const PlacePost({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        RegionDropDownButton(),
        SizedBox(height: 12),
        CustomTextField(
          hintText: 'Название',
        ),
        SizedBox(height: 12),
        CustomTextField(
          hintText: 'Описание',
        ),
        SizedBox(height: 12),
        CustomTextField(
          hintText: 'Цена',
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}
