import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/features/companies/domain/company_model.dart';
import 'package:sayakat/theme/app_text_styles.dart';

class CompanyListViewItemWidget extends StatelessWidget {
  const CompanyListViewItemWidget({super.key, required this.model});
  final CompanyModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: const Offset(0, 5),
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  model.image,
                ),
                fit: BoxFit.cover,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 5),
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.name,
                  style: AppTextStyles.s18W700(),
                ),
                const SizedBox(height: 5),
                Text(
                  'Год основания - ${model.year}',
                  style: AppTextStyles.s15W400(),
                ),
                const SizedBox(height: 5),
                Text(
                  'Проведено туров - ${model.tourCount}',
                  style: AppTextStyles.s16W500(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
