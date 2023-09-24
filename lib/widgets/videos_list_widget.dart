import 'package:flutter/material.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/widgets/flick_video_player_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class VideosListWidget extends StatefulWidget {
  const VideosListWidget({super.key, required this.players});
  final List<FlickVideoPlayerWidget> players;

  @override
  State<VideosListWidget> createState() => _VideosListWidgetState();
}

class _VideosListWidgetState extends State<VideosListWidget> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250,
          child: PageView.builder(
            controller: pageController,
            itemCount: widget.players.length,
            itemBuilder: (context, index) => widget.players[index],
          ),
        ),
        const SizedBox(height: 12),
        SmoothPageIndicator(
          controller: pageController,
          count: widget.players.length,
          effect: WormEffect(
            dotColor: Colors.grey.shade300,
            activeDotColor: AppColors.orangeff5733,
            dotWidth: 10,
            dotHeight: 10,
          ),
        ),
      ],
    );
  }
}
