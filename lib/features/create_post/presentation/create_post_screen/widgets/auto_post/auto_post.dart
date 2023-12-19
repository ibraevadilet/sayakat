import 'package:flutter/material.dart';
import 'package:sayakat/features/create_post/presentation/create_post_screen/widgets/auto_post/widgets/auto_make_drop_down_button.dart';
import 'package:sayakat/features/create_post/presentation/create_post_screen/widgets/auto_post/widgets/auto_model_drop_down_button.dart';
import 'package:sayakat/features/create_post/presentation/create_post_screen/widgets/auto_post/widgets/auto_year_drop_down_button.dart';
import 'package:sayakat/features/create_post/presentation/create_post_screen/widgets/auto_post/widgets/car_type_drop_down_button.dart';
import 'package:sayakat/features/create_post/presentation/create_post_screen/widgets/auto_post/widgets/engine_capacity_drop_down_button.dart';
import 'package:sayakat/widgets/app_unfocuser.dart';
import 'package:sayakat/widgets/custom_text_fields.dart';

class AutoPost extends StatelessWidget {
  const AutoPost({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarTypeDropDownButtonCreate(),
        SizedBox(height: 12),
        AutoMakeDropDownButton(),
        SizedBox(height: 12),
        AutoModelsDropDownButton(),
        SizedBox(height: 12),
        AutoYearDropDownButton(),
        SizedBox(height: 12),
        EngineCapacityDropDownButton(),
        SizedBox(height: 12),
        CustomTextField(
          hintText: 'Цена в день',
          keyboardType: TextInputType.number,
        )
      ],
    );
  }
}
