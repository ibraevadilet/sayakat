import 'package:flutter/material.dart';
import 'package:sayakat/features/tours/presentation/tours_main_screen.dart/widgets/category_widget.dart';
import 'package:sayakat/features/tours/presentation/tours_main_screen.dart/widgets/country_drop_down_button.dart';
import 'package:sayakat/features/tours/presentation/tours_main_screen.dart/widgets/dates_widget.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';
import 'package:sayakat/widgets/custom_text_fields.dart';
import 'package:sayakat/widgets/custom_button.dart';
import 'package:sayakat/widgets/modal_sheet_close_container.dart';
import 'package:sayakat/widgets/spaces.dart';

Future<void> showTourFilter(BuildContext mainContext) async {
  await showModalBottomSheet(
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    context: mainContext,
    builder: (context) => SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: 19,
          bottom: context.bottom,
          right: 19,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ModelSheetCloseContainer(),
            Text(
              'Страна:',
              style: AppTextStyles.s15W400(color: AppColors.black),
            ),
            const SizedBox(height: 12),
            const CountyDropDownButton(),
            const SizedBox(height: 12),
            Text(
              'Категории:',
              style: AppTextStyles.s15W400(color: AppColors.black),
            ),
            const CategoryWidget(),
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
            Text(
              'Дата:',
              style: AppTextStyles.s15W400(color: AppColors.black),
            ),
            const SizedBox(height: 12),
            const DatesWidget(),
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
