import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImagesWidget extends StatefulWidget {
  const ImagesWidget({super.key, required this.images});
  final List<String> images;

  @override
  State<ImagesWidget> createState() => _ImagesWidgetState();
}

class _ImagesWidgetState extends State<ImagesWidget> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250,
          child: PageView.builder(
            controller: pageController,
            itemCount: widget.images.length,
            itemBuilder: (context, index) => SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CachedNetworkImage(
                  imageUrl: widget.images[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        SmoothPageIndicator(
          controller: pageController,
          count: widget.images.length,
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
