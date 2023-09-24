import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/features/tours/domain/tour_model.dart';
import 'package:sayakat/routes/mobile_auto_router.gr.dart';
import 'package:sayakat/theme/app_text_styles.dart';

class ListViewTursWidget extends StatelessWidget {
  const ListViewTursWidget({
    super.key,
    required this.model,
  });
  final TourModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(TourDetailRoute(model: model));
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              offset: const Offset(0, 5),
              blurRadius: 3,
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    model.image,
                  ),
                  fit: BoxFit.cover,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 5),
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title,
                      style: AppTextStyles.s18W700(),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(
                          Icons.place_sharp,
                          color: Colors.red,
                        ),
                        Text(
                          model.destination,
                          style: AppTextStyles.s15W400(),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${model.distance} km',
                      style: AppTextStyles.s16W500(),
                    ),
                    Text(
                      '${model.price} сом',
                      style: AppTextStyles.s16W500(),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
