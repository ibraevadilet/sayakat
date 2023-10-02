// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;
import 'package:sayakat/features/auth/presentation/auth_screen/auth_screen.dart'
    as _i1;
import 'package:sayakat/features/auth/presentation/registration_person_screen/registration_person_screen.dart'
    as _i11;
import 'package:sayakat/features/auto_mobiles/domain/car_model.dart' as _i18;
import 'package:sayakat/features/auto_mobiles/presentation/auto_mobiles_detail_screen/auto_mobiles_detail_screen.dart'
    as _i2;
import 'package:sayakat/features/bottom_navigator/presentation/bottom_navigator_screen.dart'
    as _i3;
import 'package:sayakat/features/chats/presentation/chat_screen.dart' as _i4;
import 'package:sayakat/features/companies/presentation/companies_screen.dart'
    as _i5;
import 'package:sayakat/features/create_post/presentation/create_post_screen/create_post_screen.dart'
    as _i6;
import 'package:sayakat/features/education_splash/on_boarding_screen.dart'
    as _i8;
import 'package:sayakat/features/education_splash/question_splash_screen.dart'
    as _i10;
import 'package:sayakat/features/education_splash/video_splash_screen.dart'
    as _i15;
import 'package:sayakat/features/places/domain/place_model.dart' as _i20;
import 'package:sayakat/features/places/presentation/plase_detail_screen/plase_detail_screen.dart'
    as _i9;
import 'package:sayakat/features/profile/domain/entity/user_entity.dart'
    as _i19;
import 'package:sayakat/features/profile/presentation/edit_profile_screen/edit_profile_screen.dart'
    as _i7;
import 'package:sayakat/features/profile/presentation/settings_screen/settings_screen.dart'
    as _i12;
import 'package:sayakat/features/splash/splash_screen.dart' as _i13;
import 'package:sayakat/features/tours/domain/tour_model.dart' as _i21;
import 'package:sayakat/features/tours/presentation/tours_detail_screen/tours_detail_screen.dart'
    as _i14;

abstract class $AppRouter extends _i16.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthScreen(),
      );
    },
    AutoMobileDetailRoute.name: (routeData) {
      final args = routeData.argsAs<AutoMobileDetailRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AutoMobileDetailScreen(
          key: args.key,
          model: args.model,
        ),
      );
    },
    BottomNavigatorRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.BottomNavigatorScreen(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ChatScreen(),
      );
    },
    CompaniesRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CompaniesScreen(),
      );
    },
    CreeatePostRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.CreeatePostScreen(),
      );
    },
    EditProfileRoute.name: (routeData) {
      final args = routeData.argsAs<EditProfileRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.EditProfileScreen(
          key: args.key,
          currantUserData: args.currantUserData,
        ),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.OnBoardingScreen(),
      );
    },
    PlaseDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PlaseDetailRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.PlaseDetailScreen(
          key: args.key,
          model: args.model,
        ),
      );
    },
    QuestionSplashRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.QuestionSplashScreen(),
      );
    },
    RegistrationPersonRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.RegistrationPersonScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SettingsScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SplashScreen(),
      );
    },
    TourDetailRoute.name: (routeData) {
      final args = routeData.argsAs<TourDetailRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.TourDetailScreen(
          key: args.key,
          model: args.model,
        ),
      );
    },
    VideoSplashRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.VideoSplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i16.PageRouteInfo<void> {
  const AuthRoute({List<_i16.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AutoMobileDetailScreen]
class AutoMobileDetailRoute
    extends _i16.PageRouteInfo<AutoMobileDetailRouteArgs> {
  AutoMobileDetailRoute({
    _i17.Key? key,
    required _i18.CarModel model,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          AutoMobileDetailRoute.name,
          args: AutoMobileDetailRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'AutoMobileDetailRoute';

  static const _i16.PageInfo<AutoMobileDetailRouteArgs> page =
      _i16.PageInfo<AutoMobileDetailRouteArgs>(name);
}

class AutoMobileDetailRouteArgs {
  const AutoMobileDetailRouteArgs({
    this.key,
    required this.model,
  });

  final _i17.Key? key;

  final _i18.CarModel model;

  @override
  String toString() {
    return 'AutoMobileDetailRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i3.BottomNavigatorScreen]
class BottomNavigatorRoute extends _i16.PageRouteInfo<void> {
  const BottomNavigatorRoute({List<_i16.PageRouteInfo>? children})
      : super(
          BottomNavigatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigatorRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ChatScreen]
class ChatRoute extends _i16.PageRouteInfo<void> {
  const ChatRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CompaniesScreen]
class CompaniesRoute extends _i16.PageRouteInfo<void> {
  const CompaniesRoute({List<_i16.PageRouteInfo>? children})
      : super(
          CompaniesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompaniesRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i6.CreeatePostScreen]
class CreeatePostRoute extends _i16.PageRouteInfo<void> {
  const CreeatePostRoute({List<_i16.PageRouteInfo>? children})
      : super(
          CreeatePostRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreeatePostRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EditProfileScreen]
class EditProfileRoute extends _i16.PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute({
    _i17.Key? key,
    required _i19.UserEntity currantUserData,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          EditProfileRoute.name,
          args: EditProfileRouteArgs(
            key: key,
            currantUserData: currantUserData,
          ),
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i16.PageInfo<EditProfileRouteArgs> page =
      _i16.PageInfo<EditProfileRouteArgs>(name);
}

class EditProfileRouteArgs {
  const EditProfileRouteArgs({
    this.key,
    required this.currantUserData,
  });

  final _i17.Key? key;

  final _i19.UserEntity currantUserData;

  @override
  String toString() {
    return 'EditProfileRouteArgs{key: $key, currantUserData: $currantUserData}';
  }
}

/// generated route for
/// [_i8.OnBoardingScreen]
class OnBoardingRoute extends _i16.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i16.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i9.PlaseDetailScreen]
class PlaseDetailRoute extends _i16.PageRouteInfo<PlaseDetailRouteArgs> {
  PlaseDetailRoute({
    _i17.Key? key,
    required _i20.PlaseModel model,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          PlaseDetailRoute.name,
          args: PlaseDetailRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'PlaseDetailRoute';

  static const _i16.PageInfo<PlaseDetailRouteArgs> page =
      _i16.PageInfo<PlaseDetailRouteArgs>(name);
}

class PlaseDetailRouteArgs {
  const PlaseDetailRouteArgs({
    this.key,
    required this.model,
  });

  final _i17.Key? key;

  final _i20.PlaseModel model;

  @override
  String toString() {
    return 'PlaseDetailRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i10.QuestionSplashScreen]
class QuestionSplashRoute extends _i16.PageRouteInfo<void> {
  const QuestionSplashRoute({List<_i16.PageRouteInfo>? children})
      : super(
          QuestionSplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestionSplashRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i11.RegistrationPersonScreen]
class RegistrationPersonRoute extends _i16.PageRouteInfo<void> {
  const RegistrationPersonRoute({List<_i16.PageRouteInfo>? children})
      : super(
          RegistrationPersonRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationPersonRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SettingsScreen]
class SettingsRoute extends _i16.PageRouteInfo<void> {
  const SettingsRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SplashScreen]
class SplashRoute extends _i16.PageRouteInfo<void> {
  const SplashRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i14.TourDetailScreen]
class TourDetailRoute extends _i16.PageRouteInfo<TourDetailRouteArgs> {
  TourDetailRoute({
    _i17.Key? key,
    required _i21.TourModel model,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          TourDetailRoute.name,
          args: TourDetailRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'TourDetailRoute';

  static const _i16.PageInfo<TourDetailRouteArgs> page =
      _i16.PageInfo<TourDetailRouteArgs>(name);
}

class TourDetailRouteArgs {
  const TourDetailRouteArgs({
    this.key,
    required this.model,
  });

  final _i17.Key? key;

  final _i21.TourModel model;

  @override
  String toString() {
    return 'TourDetailRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i15.VideoSplashScreen]
class VideoSplashRoute extends _i16.PageRouteInfo<void> {
  const VideoSplashRoute({List<_i16.PageRouteInfo>? children})
      : super(
          VideoSplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideoSplashRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}
