import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/features/companies/domain/company_moc_data.dart';
import 'package:sayakat/features/companies/presentation/widgets/company_list_view_item_widget.dart';
import 'package:sayakat/widgets/animated_scroll_view_item.dart';
import 'package:sayakat/widgets/custom_app_bar.dart';

@RoutePage()
class CompaniesScreen extends StatelessWidget {
  const CompaniesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Компании',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: ListView.separated(
          itemCount: companyList.length,
          itemBuilder: (context, index) => AnimatedScrollViewItem(
            child: CompanyListViewItemWidget(
              model: companyList[index],
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 10),
        ),
      ),
    );
  }
}
