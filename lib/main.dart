import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/core/constants/app_text_constants.dart';
import 'package:sayakat/routes/mobile_auto_router.dart';
import 'package:sayakat/server/service_locator.dart';
import 'package:sayakat/theme/app_theme.dart';
import 'package:sayakat/widgets/init_widget.dart';

final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
final appRouter = sl<AppRouter>();

void main() async {
  await init();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InitWidget(
      child: Builder(
        builder: (context) => MaterialApp.router(
          scaffoldMessengerKey: scaffoldKey,
          theme: lightTheme,
          title: AppTextConstants.appTitle,
          debugShowCheckedModeBanner: false,
          routeInformationParser: appRouter.defaultRouteParser(),
          routerDelegate: AutoRouterDelegate(appRouter),
          routeInformationProvider: appRouter.routeInfoProvider(),
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          locale: context.locale,
        ),
      ),
    );
  }
}
