import 'package:flutter/material.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';
import 'package:sayakat/widgets/flick_video_player_widget.dart';
import 'package:sayakat/widgets/images_widget.dart';
import 'package:sayakat/widgets/videos_list_widget.dart';

class ImageVideoTabBarWidget extends StatefulWidget {
  const ImageVideoTabBarWidget({
    super.key,
    required this.images,
    required this.videos,
  });

  final List<String> images;
  final List<String> videos;

  @override
  State<ImageVideoTabBarWidget> createState() => _ImageVideoTabBarWidgetState();
}

class _ImageVideoTabBarWidgetState extends State<ImageVideoTabBarWidget> {
  int currantIndex = 0;

  late List<Widget> tabBarView = [
    ImagesWidget(
      images: widget.images,
    ),
    VideosListWidget(
      players: widget.videos
          .map<FlickVideoPlayerWidget>((e) => FlickVideoPlayerWidget(
                video: e,
              ))
          .toList(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            onTap: (index) {
              currantIndex = index;
              setState(() {});
            },
            tabs: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: FittedBox(
                  child: Text(
                    'Фотографии',
                    style: AppTextStyles.s15W600(color: AppColors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: FittedBox(
                  child: Text(
                    'Видео',
                    style: AppTextStyles.s15W600(color: AppColors.black),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          tabBarView[currantIndex],
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
