// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:sayakat/features/auth/presentation/auth_screen/auth_screen.dart'
    as _i1;
import 'package:sayakat/features/bottom_navigator/presentation/bottom_navigator_screen.dart'
    as _i2;
import 'package:sayakat/features/education_splash/on_boarding_screen.dart'
    as _i3;
import 'package:sayakat/features/education_splash/question_splash_screen.dart'
    as _i5;
import 'package:sayakat/features/education_splash/video_splash_screen.dart'
    as _i8;
import 'package:sayakat/features/places/domain/place_model.dart' as _i11;
import 'package:sayakat/features/places/presentation/plase_detail_screen/plase_detail_screen.dart'
    as _i4;
import 'package:sayakat/features/splash/splash_screen.dart' as _i6;
import 'package:sayakat/features/tours/domain/tour_model.dart' as _i12;
import 'package:sayakat/features/tours/presentation/tours_detail_screen/tours_detail_screen.dart'
    as _i7;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthScreen(),
      );
    },
    BottomNavigatorRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BottomNavigatorScreen(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.OnBoardingScreen(),
      );
    },
    PlaseDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PlaseDetailRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.PlaseDetailScreen(
          key: args.key,
          model: args.model,
        ),
      );
    },
    QuestionSplashRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.QuestionSplashScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SplashScreen(),
      );
    },
    TourDetailRoute.name: (routeData) {
      final args = routeData.argsAs<TourDetailRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.TourDetailScreen(
          key: args.key,
          model: args.model,
        ),
      );
    },
    VideoSplashRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.VideoSplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i9.PageRouteInfo<void> {
  const AuthRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BottomNavigatorScreen]
class BottomNavigatorRoute extends _i9.PageRouteInfo<void> {
  const BottomNavigatorRoute({List<_i9.PageRouteInfo>? children})
      : super(
          BottomNavigatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigatorRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.OnBoardingScreen]
class OnBoardingRoute extends _i9.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i9.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.PlaseDetailScreen]
class PlaseDetailRoute extends _i9.PageRouteInfo<PlaseDetailRouteArgs> {
  PlaseDetailRoute({
    _i10.Key? key,
    required _i11.PlaseModel model,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          PlaseDetailRoute.name,
          args: PlaseDetailRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'PlaseDetailRoute';

  static const _i9.PageInfo<PlaseDetailRouteArgs> page =
      _i9.PageInfo<PlaseDetailRouteArgs>(name);
}

class PlaseDetailRouteArgs {
  const PlaseDetailRouteArgs({
    this.key,
    required this.model,
  });

  final _i10.Key? key;

  final _i11.PlaseModel model;

  @override
  String toString() {
    return 'PlaseDetailRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i5.QuestionSplashScreen]
class QuestionSplashRoute extends _i9.PageRouteInfo<void> {
  const QuestionSplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          QuestionSplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestionSplashRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SplashScreen]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.TourDetailScreen]
class TourDetailRoute extends _i9.PageRouteInfo<TourDetailRouteArgs> {
  TourDetailRoute({
    _i10.Key? key,
    required _i12.TourModel model,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          TourDetailRoute.name,
          args: TourDetailRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'TourDetailRoute';

  static const _i9.PageInfo<TourDetailRouteArgs> page =
      _i9.PageInfo<TourDetailRouteArgs>(name);
}

class TourDetailRouteArgs {
  const TourDetailRouteArgs({
    this.key,
    required this.model,
  });

  final _i10.Key? key;

  final _i12.TourModel model;

  @override
  String toString() {
    return 'TourDetailRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i8.VideoSplashScreen]
class VideoSplashRoute extends _i9.PageRouteInfo<void> {
  const VideoSplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          VideoSplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideoSplashRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
