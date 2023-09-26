import 'package:flutter/material.dart';
import 'package:sayakat/features/auto_mobiles/domain/car_moc_data.dart';
import 'package:sayakat/features/auto_mobiles/presentation/auto_mobiles_main_screen/widgets/car_list_view_item_widget.dart';
import 'package:sayakat/features/auto_mobiles/presentation/auto_mobiles_main_screen/widgets/show_plases_filter.dart';
import 'package:sayakat/widgets/animated_scroll_view_item.dart';
import 'package:sayakat/widgets/custom_app_bar.dart';

class AutoMobilesScreen extends StatelessWidget {
  const AutoMobilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Автомобили в аренду',
        actions: [
          IconButton(
            onPressed: () async => await showCarsFilter(context),
            icon: const Icon(Icons.search),
          ),
          const SizedBox(width: 12),
        ],
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
