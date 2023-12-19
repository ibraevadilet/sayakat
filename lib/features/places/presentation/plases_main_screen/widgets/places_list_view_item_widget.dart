import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/features/places/domain/place_model.dart';
import 'package:sayakat/features/places/presentation/plases_main_screen/widgets/show_comments_sheet.dart';
import 'package:sayakat/routes/mobile_auto_router.gr.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';

class PlacesListViewItemWidget extends StatelessWidget {
  const PlacesListViewItemWidget({super.key, required this.model});
  final PlaseModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(PlaseDetailRoute(model: model));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
                          model.region,
                          style: AppTextStyles.s18W700(),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          model.recCenter,
                          style: AppTextStyles.s15W400(),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          model.place,
                          style: AppTextStyles.s16W500(),
                        ),
                        Text(
                          '${model.price}\$/день',
                          style: AppTextStyles.s16W500(),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Row(
              children: [
                InkWell(
                  onTap: () async {
                    await showCommentsSheet(context);
                  },
                  child: Text(
                    'Отзывы(11)',
                    style: AppTextStyles.s16W400(),
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.favorite,
                  color: AppColors.colorF50C28,
                ),
                const SizedBox(width: 5),
                Text(
                  '11',
                  style: AppTextStyles.s16W400(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
