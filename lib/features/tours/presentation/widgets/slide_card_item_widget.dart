import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/features/tours/domain/tour_model.dart';
import 'package:sayakat/theme/app_text_styles.dart';

class SlideCardItemWidget extends StatelessWidget {
  const SlideCardItemWidget({super.key, required this.model});
  final TourModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
              imageUrl: model.image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black,
                ],
              ),
            ),
            child: Opacity(
              opacity: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CachedNetworkImage(
                  imageUrl: model.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            left: 20,
            child: Text(
              model.title,
              style: AppTextStyles.s20W700(
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 20,
            child: Row(
              children: [
                const Icon(
                  Icons.monetization_on_outlined,
                  color: Colors.white,
                ),
                const SizedBox(width: 5),
                Text(
                  '${model.price}',
                  style: AppTextStyles.s17W600(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            right: 20,
            child: Row(
              children: [
                const Icon(
                  Icons.place_sharp,
                  color: Colors.white,
                ),
                Text(
                  '${model.distance} km',
                  style: AppTextStyles.s17W600(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
