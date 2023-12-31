import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/features/places/domain/place_model.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';
import 'package:sayakat/widgets/call_buttons.dart';
import 'package:sayakat/widgets/custom_app_bar.dart';
import 'package:sayakat/widgets/image_video_tab_bar.dart';

@RoutePage()
class PlaseDetailScreen extends StatelessWidget {
  const PlaseDetailScreen({super.key, required this.model});
  final PlaseModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CallButtons(),
      appBar: CustomAppBar(
        title: model.recCenter,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: AppColors.colorF50C28,
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageVideoTabBarWidget(
                images: [
                  model.image,
                  model.image,
                  model.image,
                ],
                videos: [
                  model.image,
                  model.image,
                  model.image,
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Описание:',
                    style: AppTextStyles.s15W600(),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                'Иссы́к-Ку́ль — бессточное озеро в Киргизии. Входит в 30 крупнейших по площади озёр мира и занимает седьмое место в списке самых глубоких озёр. Расположено в северо-восточной части республики, между хребтами Северного Тянь-Шаня: Кюнгёй-Ала-Тоо и Терскей Ала-Тоо на высоте 1608 метров над уровнем моря',
                style: AppTextStyles.s15W400(),
              ),
              const SizedBox(height: 12),
              Text(
                'Цена: ${model.price} сом / день',
                style: AppTextStyles.s15W600(),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
