import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/core/formatters/enums.dart';
import 'package:sayakat/features/create_post/presentation/create_post_screen/widgets/auto_post/auto_post.dart';
import 'package:sayakat/features/create_post/presentation/create_post_screen/widgets/place_post/place_post.dart';
import 'package:sayakat/features/create_post/presentation/create_post_screen/widgets/post_type_drop_down_button.dart';
import 'package:sayakat/features/create_post/presentation/create_post_screen/widgets/tour_post/tour_post.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/widgets/app_unfocuser.dart';
import 'package:sayakat/widgets/custom_app_bar.dart';
import 'package:sayakat/widgets/custom_button.dart';

@RoutePage()
class CreeatePostScreen extends StatefulWidget {
  const CreeatePostScreen({super.key});

  @override
  State<CreeatePostScreen> createState() => _CreeatePostScreenState();
}

class _CreeatePostScreenState extends State<CreeatePostScreen> {
  PostType? selectedType;
  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: 'Создание рекламы',
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            const SizedBox(height: 12),
            const Text('Тип объявления:'),
            const SizedBox(height: 12),
            PostTypeDropDownButton(
              onChange: (selectedFrom) {
                setState(() {
                  selectedType = selectedFrom;
                });
              },
            ),
            const SizedBox(height: 12),
            Visibility(
              visible: selectedType != null,
              child: selectedType == PostType.tour
                  ? const TourPost()
                  : selectedType == PostType.place
                      ? const PlacePost()
                      : const AutoPost(),
            ),
          ],
        ),
        bottomNavigationBar: SafeArea(
          child: CustomButton(
            aroundButtonPadding:
                const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
            isFullFilled: false,
            borderColor: AppColors.orangeff5733,
            textColor: AppColors.orangeff5733,
            color: Colors.white,
            onPress: () {},
            text: 'Поделиться',
          ),
        ),
      ),
    );
  }
}
