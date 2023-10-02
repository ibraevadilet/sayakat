import 'package:flutter/material.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/widgets/custom_button.dart';
import 'package:sayakat/widgets/spaces.dart';

Future<void> exitDialog(BuildContext mainContext) async {
  await showDialog(
    context: mainContext,
    builder: (context) => SizedBox(
      width: context.width,
      child: AlertDialog(
        insetPadding: EdgeInsets.zero,
        title: const Text(
          'Вы действительно хотите выйти?',
          textAlign: TextAlign.center,
        ),
        content: Row(
          children: [
            Expanded(
              child: CustomButton(
                color: AppColors.color65C130,
                onPress: () {
                  Navigator.pop(context);
                },
                text: 'Нет',
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: CustomButton(
                color: AppColors.colorF50C28,
                onPress: () {
                  Navigator.pop(context);
                },
                text: 'Да',
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
