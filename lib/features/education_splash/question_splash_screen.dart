import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sayakat/features/splash/splash_cubit/splash_cubit.dart';
import 'package:sayakat/server/service_locator.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';

@RoutePage()
class QuestionSplashScreen extends StatelessWidget {
  const QuestionSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orangeff5733,
      body: BlocProvider<SplashCubit>(
        create: (context) => sl<SplashCubit>()..toVideoScreen(),
        child: BlocBuilder<SplashCubit, SplashState>(
          builder: (context, state) {
            return SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Собираетесь отправиться в увлекательное путешествие?',
                      style: AppTextStyles.s17W600(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TyperAnimatedText(
                          speed: const Duration(milliseconds: 50),
                          textAlign: TextAlign.center,
                          'Оно начинется...',
                          textStyle: AppTextStyles.s24W700(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
