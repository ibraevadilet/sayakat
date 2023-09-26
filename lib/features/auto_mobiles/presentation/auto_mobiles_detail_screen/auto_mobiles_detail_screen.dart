import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/features/auto_mobiles/domain/car_model.dart';
import 'package:sayakat/features/auto_mobiles/presentation/auto_mobiles_detail_screen/widgets/car_characteristic.dart';
import 'package:sayakat/features/auto_mobiles/presentation/auto_mobiles_detail_screen/widgets/car_description.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';
import 'package:sayakat/widgets/call_buttons.dart';
import 'package:sayakat/widgets/custom_app_bar.dart';
import 'package:sayakat/widgets/image_video_tab_bar.dart';

@RoutePage()
class AutoMobileDetailScreen extends StatelessWidget {
  const AutoMobileDetailScreen({super.key, required this.model});
  final CarModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CallButtons(),
      appBar: CustomAppBar(
        title: '${model.make} ${model.model}',
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
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade200,
                ),
                child: Text(
                  'Цена:  ${model.price}\$ / день',
                  style: AppTextStyles.s17W600(color: AppColors.colorF50C28),
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView(
                  children: [
                    CarCharacteristic(model: model),
                    CarDescription(description: '${model.image}${model.image}'),
                    const SizedBox(height: 48),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
