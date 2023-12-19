import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sayakat/core/constants/shared_keys.dart';
import 'package:sayakat/core/functions/push_router_func.dart';
import 'package:sayakat/routes/mobile_auto_router.gr.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_cubit.freezed.dart';
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit({required this.prefs}) : super(const SplashState.initial());
  final SharedPreferences prefs;

  Future<void> getFirstOpenStatus() async {
    final token = prefs.getString(SharedKeys.token) ?? '';
    final firstOpen = prefs.getBool(SharedKeys.firstOpen) ?? false;
    await Future.delayed(const Duration(seconds: 2));

    if (!firstOpen) {
      pushAndPopUntilFunction(const QuestionSplashRoute());
    } else {
      if (token.isEmpty) {
        pushAndPopUntilFunction(const AuthRoute());
      } else {
        pushAndPopUntilFunction(const BottomNavigatorRoute());
      }
    }
  }

  Future<void> toVideoScreen() async {
    await Future.delayed(const Duration(seconds: 5));
    pushAndPopUntilFunction(const VideoSplashRoute());
  }

  Future<void> toOnboardingScreen() async {
    await Future.delayed(const Duration(seconds: 9));
    pushAndPopUntilFunction(const OnBoardingRoute());
  }
}
