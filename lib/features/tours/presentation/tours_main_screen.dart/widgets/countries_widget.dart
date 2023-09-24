import 'package:flutter/material.dart';
import 'package:sayakat/features/tours/presentation/tours_main_screen.dart/widgets/show_tour_filter.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';

class CountriesWidget extends StatefulWidget {
  const CountriesWidget({super.key});

  @override
  State<CountriesWidget> createState() => _CountriesWidgetState();
}

class _CountriesWidgetState extends State<CountriesWidget> {
  final List<String> counties = [
    'Кыргызстан',
    'Казахстан',
    'Россия',
    'Узбекистан',
    'Турция',
    'ОАЭ',
    'Все страны'
  ];
  String selectedCountry = 'Все страны';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          PopupMenuButton(
            position: PopupMenuPosition.under,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            itemBuilder: (context) => counties
                .map(
                  (e) => PopupMenuItem(
                    child: Text(e),
                    onTap: () {
                      setState(() {
                        selectedCountry = e;
                      });
                    },
                  ),
                )
                .toList(),
            child: Row(
              children: [
                Text(
                  selectedCountry,
                  style: AppTextStyles.s24W900(
                    color: AppColors.black,
                  ),
                ),
                const Icon(
                  Icons.arrow_drop_down_outlined,
                  size: 35,
                ),
              ],
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              showTourFilter(context);
            },
            child: const Row(
              children: [
                Text('Фильтры'),
                Icon(
                  Icons.filter_alt_rounded,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
