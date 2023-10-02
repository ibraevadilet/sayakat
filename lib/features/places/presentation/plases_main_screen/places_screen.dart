import 'package:flutter/material.dart';
import 'package:sayakat/features/places/domain/place_moc_data.dart';
import 'package:sayakat/features/places/presentation/plases_main_screen/widgets/places_list_view_item_widget.dart';
import 'package:sayakat/features/places/presentation/plases_main_screen/widgets/show_plases_filter.dart';
import 'package:sayakat/widgets/animated_scroll_view_item.dart';
import 'package:sayakat/widgets/custom_app_bar.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Центры отдыха',
        actions: [
          IconButton(
            onPressed: () async => await showPlasesFilter(context),
            icon: const Icon(Icons.search),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: ListView.separated(
          controller: scrollController,
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
