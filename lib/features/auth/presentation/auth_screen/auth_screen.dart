import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/core/images/app_images.dart';
import 'package:sayakat/features/auth/presentation/auth_screen/widgets/show_forgot_bottom_sheet.dart';
import 'package:sayakat/routes/mobile_auto_router.gr.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';
import 'package:sayakat/widgets/app_unfocuser.dart';
import 'package:sayakat/widgets/custom_button.dart';
import 'package:sayakat/widgets/custom_text_fields.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 22),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 110),
                    child: Image.asset(
                      AppImages.appLogo,
                      color: AppColors.orangeff5733,
                    ),
                  ),
                  const SizedBox(height: 44),
                  Text(
                    'Email почта',
                    style: AppTextStyles.s15W600(),
                  ),
                  const SizedBox(height: 6),
                  const CustomTextField(
                    hintText: 'Email',
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Пароль',
                    style: AppTextStyles.s15W600(),
                  ),
                  const SizedBox(height: 6),
                  const CustomTextField(
                    hintText: 'Пароль',
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () async =>
                            showForgotBottomNavigator(context),
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text('Забыли пароль?'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 34),
                  CustomButton(
                    color: AppColors.orangeff5733,
                    onPress: () {
                      context.router.pushAndPopUntil(
                        const BottomNavigatorRoute(),
                        predicate: (route) => false,
                      );
                    },
                    text: 'Войти',
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'У вас нет учетной записи?',
                        style: AppTextStyles.s15W600(),
                      ),
                      TextButton(
                        onPressed: () {
                          context.router.push(const RegistrationPersonRoute());
                        },
                        child: const Text('Регистрация'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
