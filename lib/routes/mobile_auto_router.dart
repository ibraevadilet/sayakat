import 'package:auto_route/auto_route.dart';
import 'package:sayakat/routes/mobile_auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        CustomRoute(
          page: VideoSplashRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        CustomRoute(
          page: QuestionSplashRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        CustomRoute(
          page: OnBoardingRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        AutoRoute(page: AuthRoute.page),
        AutoRoute(page: BottomNavigatorRoute.page),
        AutoRoute(page: TourDetailRoute.page),
        AutoRoute(page: PlaseDetailRoute.page),
        AutoRoute(page: AutoMobileDetailRoute.page),
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: EditProfileRoute.page),
        AutoRoute(page: CompaniesRoute.page),
        AutoRoute(page: ChatRoute.page),
        AutoRoute(page: CreeatePostRoute.page),
        AutoRoute(page: RegistrationPersonRoute.page),
      ];
}
