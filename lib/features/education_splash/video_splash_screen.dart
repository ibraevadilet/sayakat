import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sayakat/core/videos/app_videos.dart';
import 'package:sayakat/features/splash/splash_cubit/splash_cubit.dart';
import 'package:sayakat/server/service_locator.dart';
import 'package:video_player/video_player.dart';

@RoutePage()
class VideoSplashScreen extends StatefulWidget {
  const VideoSplashScreen({super.key});

  @override
  State<VideoSplashScreen> createState() => _VideoSplashScreenState();
}

class _VideoSplashScreenState extends State<VideoSplashScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(AppVideos.splashVideo)
      ..initialize().then((_) {
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SplashCubit>(
        create: (context) => sl<SplashCubit>()..toOnboardingScreen(),
        child: BlocBuilder<SplashCubit, SplashState>(
          builder: (context, state) {
            return const Text('VIDEO');
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
