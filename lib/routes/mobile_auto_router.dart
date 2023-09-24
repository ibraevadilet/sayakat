import 'package:auto_route/auto_route.dart';
import 'package:sayakat/routes/mobile_auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page),
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
        AutoRoute(page: BottomNavigatorRoute.page, initial: true),
        AutoRoute(page: TourDetailRoute.page),
        AutoRoute(page: PlaseDetailRoute.page),
      ];
}
