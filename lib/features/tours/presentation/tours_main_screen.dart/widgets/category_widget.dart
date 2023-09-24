import 'package:flutter/material.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  List<String> categories = [
    'Горы',
    'Озера',
    'Водопады',
    'Города',
    'Исторические места',
    'Конные туры',
  ];

  List<String> selectedCategory = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(vertical: 10),
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            if (!selectedCategory.contains(categories[index])) {
              selectedCategory.add(categories[index]);
            } else {
              selectedCategory.remove(categories[index]);
            }
            setState(() {});
          },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: selectedCategory.contains(categories[index])
                  ? AppColors.orangeff5733
                  : Colors.white,
            ),
            child: Text(
              categories[index],
              style: AppTextStyles.s15W600(
                color: selectedCategory.contains(categories[index])
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 5),
      ),
    );
  }
}
