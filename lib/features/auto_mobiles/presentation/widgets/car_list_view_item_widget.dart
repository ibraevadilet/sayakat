import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sayakat/features/auto_mobiles/domain/car_model.dart';
import 'package:sayakat/theme/app_text_styles.dart';

class CarListViewItemWidget extends StatelessWidget {
  const CarListViewItemWidget({super.key, required this.model});
  final CarModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    model.make,
                    style: AppTextStyles.s18W700(),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    model.model,
                    style: AppTextStyles.s15W400(),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Год - ${model.year}',
                    style: AppTextStyles.s16W500(),
                  ),
                  Text(
                    'Цена - ${model.price}\$/день',
                    style: AppTextStyles.s16W500(),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
