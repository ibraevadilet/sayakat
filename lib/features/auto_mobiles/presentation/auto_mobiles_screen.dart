import 'package:flutter/material.dart';
import 'package:sayakat/features/auto_mobiles/domain/car_moc_data.dart';
import 'package:sayakat/features/auto_mobiles/presentation/widgets/car_list_view_item_widget.dart';
import 'package:sayakat/widgets/animated_scroll_view_item.dart';
import 'package:sayakat/widgets/custom_app_bar.dart';

class AutoMobilesScreen extends StatelessWidget {
  const AutoMobilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Автомобили в аренду',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: ListView.separated(
          itemCount: carsList.length,
          itemBuilder: (context, index) => AnimatedScrollViewItem(
            child: CarListViewItemWidget(
              model: carsList[index],
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 10),
        ),
      ),
    );
  }
}
