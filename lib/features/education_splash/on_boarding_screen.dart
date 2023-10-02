import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sayakat/core/constants/app_text_constants.dart';
import 'package:sayakat/core/functions/push_router_func.dart';
import 'package:sayakat/features/splash/splash_cubit/splash_cubit.dart';
import 'package:sayakat/routes/mobile_auto_router.gr.dart';
import 'package:sayakat/server/service_locator.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';
import 'package:sayakat/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController controller = PageController();
  List<String> texts = const [
    'Добро пожаловать!\nГотовы ли вы присоединиться к захватывающим турам и открыть для себя новые места?',
    'Окунитесь в мир открытий и приключений. Находите удивительные места и создавайте незабываемые воспоминания',
    'Подготовьтесь к приключению!\nВ аренде доступны внедорожники, готовые вас отвести в путь по дорогам и тропам',
    'Сделайте свои путешествия незабываемыми. Делитесь своими приключениями и красотой мира с друзьями через социальные сети',
  ];
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orangeff5733,
      body: BlocProvider<SplashCubit>(
        create: (context) => sl<SplashCubit>(),
        child: BlocBuilder<SplashCubit, SplashState>(
          builder: (context, state) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Expanded(
                      child: PageView.builder(
                        onPageChanged: (value) {
                          pageIndex = value;
                        },
                        controller: controller,
                        itemCount: PageViewImages.images.length,
                        itemBuilder: (context, index) => Column(
                          children: [
                            Container(
                              height: 250,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: NetworkImage(
                                    PageViewImages.images[index],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              texts[index],
                              textAlign: TextAlign.center,
                              style: AppTextStyles.s17W600(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SmoothPageIndicator(
                      controller: controller,
                      count: 4,
                      effect: const WormEffect(
                        dotColor: Colors.white,
                      ),
                      onDotClicked: (index) {
                        controller.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    CustomButton(
                      textColor: Colors.black,
                      color: Colors.white,
                      onPress: () {
                        if (pageIndex == 3) {
                          pushAndPopUntilFunction(const AuthRoute());
                        } else {
                          controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        }
                      },
                      text: 'Далее',
                    ),
                    const SizedBox(height: 16),
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
