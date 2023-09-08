import 'package:flutter/material.dart';
import 'package:sayakat/features/auto_mobiles/domain/car_moc_data.dart';
import 'package:sayakat/features/places/domain/place_moc_data.dart';
import 'package:sayakat/features/places/presentation/widgets/places_list_view_item_widget.dart';
import 'package:sayakat/widgets/animated_scroll_view_item.dart';
import 'package:sayakat/widgets/custom_app_bar.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Места отдыха',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: ListView.separated(
          itemCount: placeList.length,
          itemBuilder: (context, index) => AnimatedScrollViewItem(
            child: PlacesListViewItemWidget(
              model: placeList[index],
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 10),
        ),
      ),
    );
  }
}
