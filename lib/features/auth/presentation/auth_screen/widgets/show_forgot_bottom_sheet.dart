import 'package:flutter/material.dart';
import 'package:sayakat/core/formatters/shapes.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/widgets/custom_button.dart';
import 'package:sayakat/widgets/custom_text_fields.dart';
import 'package:sayakat/widgets/modal_sheet_close_container.dart';
import 'package:sayakat/widgets/spaces.dart';
import 'package:sayakat/widgets/styled_toasts.dart';

Future<void> showForgotBottomNavigator(BuildContext mainContex) async {
  await showModalBottomSheet(
    context: mainContex,
    isScrollControlled: true,
    shape: AppShapes.bottomNavigatorShape(),
    builder: (context) => SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: context.bottom),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ModelSheetCloseContainer(),
            const CustomTextField(
              hintText: 'Email',
            ),
            const SizedBox(height: 12),
            CustomButton(
              color: AppColors.orangeff5733,
              onPress: () {
                Navigator.pop(context);
              },
              text: 'Отправить',
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    ),
  );
  AppSnackBar.showSnackBar(
    'На вашу почту отправили ссылку для сброса пароля',
    isSuccess: true,
  );
}
