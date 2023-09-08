import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sayakat/core/constants/app_text_constants.dart';
import 'package:sayakat/core/images/app_images.dart';
import 'package:sayakat/features/splash/splash_cubit/splash_cubit.dart';
import 'package:sayakat/server/service_locator.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orangeff5733,
      body: BlocProvider<SplashCubit>(
        create: (context) => sl<SplashCubit>()..getFirstOpenStatus(),
        child: BlocBuilder<SplashCubit, SplashState>(
          builder: (context, state) {
            return SafeArea(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100),
                        child: Image.asset(
                          AppImages.appLogo,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        AppTextConstants.appTitle,
                        style: AppTextStyles.s60W900(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 16,
                    child: Text(
                      'Уникальное приложение\nдля путешестивий',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.s17W600(color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
