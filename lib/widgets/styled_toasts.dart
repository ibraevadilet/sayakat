import 'package:flutter/material.dart';
import 'package:sayakat/main.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';

void showErrorSnackBar(String text) {
  scaffoldKey.currentState?.showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 2),
      elevation: 0,
      backgroundColor: Colors.transparent,
      content: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFFF1100),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: AppTextStyles.s16W400(color: AppColors.white),
        ),
      ),
    ),
  );
}

void showSuccessSnackBar(String text) {
  scaffoldKey.currentState?.showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 2),
      elevation: 0,
      backgroundColor: Colors.transparent,
      content: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF026405),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: AppTextStyles.s16W400(color: AppColors.white),
        ),
      ),
    ),
  );
}
