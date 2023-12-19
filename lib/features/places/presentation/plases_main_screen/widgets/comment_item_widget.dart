import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/features/places/domain/place_model.dart';
import 'package:sayakat/theme/app_text_styles.dart';

class CommentItemWidget extends StatelessWidget {
  const CommentItemWidget({super.key, required this.model});
  final PlaseModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(
          model.image,
        ),
      ),
      title: Text(
        model.place,
        style: AppTextStyles.s14W400(),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.recCenter,
            style: AppTextStyles.s16W500(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '11.12.2023',
                style: AppTextStyles.s14W400(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
