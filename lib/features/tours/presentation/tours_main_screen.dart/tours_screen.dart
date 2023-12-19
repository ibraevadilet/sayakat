import 'package:flutter/material.dart';
import 'package:sayakat/core/formatters/paggings.dart';
import 'package:sayakat/features/tours/domain/moc_data_tours.dart';
import 'package:sayakat/features/tours/presentation/tours_main_screen.dart/widgets/category_widget.dart';
import 'package:sayakat/features/tours/presentation/tours_main_screen.dart/widgets/countries_widget.dart';
import 'package:sayakat/features/tours/presentation/tours_main_screen.dart/widgets/list_view_turs_widget.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';
import 'package:sayakat/widgets/animated_scroll_view_item.dart';

class ToursScreen extends StatelessWidget {
  const ToursScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            const CountriesWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  Text(
                    'Катергории:',
                    style: AppTextStyles.s15W600(
                      color: AppColors.black,
                    ),
                  ),
                  const CategoryWidget(),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: AppPaddings.listViewPadding,
                shrinkWrap: true,
                itemCount: tourList.length,
                itemBuilder: (context, index) => AnimatedScrollViewItem(
                  child: ListViewTursWidget(
                    model: tourList[index],
                  ),
                ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
