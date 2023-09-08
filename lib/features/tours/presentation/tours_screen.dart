import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sayakat/features/tours/domain/moc_data_tours.dart';
import 'package:sayakat/features/tours/presentation/widgets/list_view_turs_widget.dart';
import 'package:sayakat/features/tours/presentation/widgets/slide_card_item_widget.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';
import 'package:sayakat/widgets/animated_scroll_view_item.dart';
import 'package:sayakat/widgets/card_slider.dart';

class ToursScreen extends StatefulWidget {
  const ToursScreen({super.key});

  @override
  State<ToursScreen> createState() => _ToursScreenState();
}

class _ToursScreenState extends State<ToursScreen> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            children: [
              const SizedBox(height: 16),
              Visibility(
                visible: _visible,
                child: Text(
                  'Популярные туры',
                  style: AppTextStyles.s16W500(),
                ),
              ),
              Visibility(
                visible: _visible,
                child: CardSlider(
                  cards: tourList
                      .map<Widget>((e) => SlideCardItemWidget(model: e))
                      .toList(),
                  bottomOffset: .001,
                  cardHeight: 0.55,
                  cardWidth: 1,
                  itemDotOffset: 0.6,
                  itemDot: (itemDotWidth) => Container(
                    margin: const EdgeInsets.all(5),
                    width: 8 + itemDotWidth,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.orangeff5733,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Все туры',
                          style: AppTextStyles.s16W500(),
                        ),
                        const Icon(
                          Icons.search,
                          color: AppColors.orangeff5733,
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: NotificationListener<UserScrollNotification>(
                        onNotification: (notification) {
                          final ScrollDirection direction =
                              notification.direction;
                          final scrollPixels = notification.metrics.pixels;
                          setState(() {
                            if (direction == ScrollDirection.reverse &&
                                scrollPixels > 300) {
                              _visible = false;
                            } else if (direction == ScrollDirection.forward &&
                                scrollPixels < 3) {
                              _visible = true;
                            }
                          });
                          return true;
                        },
                        child: ListView.separated(
                          itemCount: tourList.length,
                          itemBuilder: (context, index) =>
                              AnimatedScrollViewItem(
                            child: ListViewTursWidget(
                              model: tourList[index],
                            ),
                          ),
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 10),
                        ),
                      ),
                    ),
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
