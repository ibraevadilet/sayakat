import 'package:flutter/material.dart';
import 'package:sayakat/features/places/presentation/plases_main_screen/widgets/region_drop_down_button.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';
import 'package:sayakat/widgets/custom_text_fields.dart';
import 'package:sayakat/widgets/custom_button.dart';
import 'package:sayakat/widgets/modal_sheet_close_container.dart';

Future<void> showPlasesFilter(BuildContext mainContext) async {
  await showModalBottomSheet(
    context: mainContext,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    builder: (context) => SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: 19,
          bottom: MediaQuery.of(context).viewInsets.bottom,
          right: 19,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const ModelSheetCloseContainer(),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Фильтры',
                  style: AppTextStyles.s16W400(color: AppColors.black),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              'Область:',
              style: AppTextStyles.s15W400(color: AppColors.black),
            ),
            const SizedBox(height: 12),
            const RegionDropDownButton(),
            const SizedBox(height: 12),
            Text(
              'Стоимость:',
              style: AppTextStyles.s15W400(color: AppColors.black),
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    keyboardType: TextInputType.number,
                    labelText: 'От',
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: CustomTextField(
                    keyboardType: TextInputType.number,
                    labelText: 'До',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const SizedBox(height: 24),
            CustomButton(
              color: AppColors.orangeff5733,
              onPress: () {
                Navigator.pop(context);
              },
              text: 'Поиск',
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    ),
  );
}
