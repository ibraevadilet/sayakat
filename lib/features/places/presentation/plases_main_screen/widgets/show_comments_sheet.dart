import 'package:flutter/material.dart';
import 'package:sayakat/core/formatters/shapes.dart';
import 'package:sayakat/features/places/domain/place_moc_data.dart';
import 'package:sayakat/features/places/presentation/plases_main_screen/widgets/comment_item_widget.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';
import 'package:sayakat/widgets/custom_text_fields.dart';

Future<void> showCommentsSheet(BuildContext mainContext) async {
  await showModalBottomSheet(
    isScrollControlled: true,
    shape: AppShapes.bottomNavigatorShape(),
    context: mainContext,
    builder: (context) => DraggableScrollableSheet(
      maxChildSize: 0.92,
      minChildSize: 0.5,
      initialChildSize: 0.7,
      expand: false,
      builder: (BuildContext context, ScrollController scrollController) {
        return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              Center(
                child: Container(
                  height: 5,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Center(
                child: Text(
                  'Отзывы',
                  style: AppTextStyles.s15W600(),
                ),
              ),
              const SizedBox(height: 12),
              const Divider(),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.separated(
                  controller: scrollController,
                  itemCount: placeList.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                  itemBuilder: (context, index) =>
                      CommentItemWidget(model: placeList[index]),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                  left: 16,
                  right: 16,
                ),
                child: Builder(
                  builder: (context) => Row(
                    children: [
                      const Expanded(
                        child: CustomTextField(
                          hintText: 'Написать отзыв',
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                          color: AppColors.bule00bcfb,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
