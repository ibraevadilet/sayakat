import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/widgets/custom_app_bar.dart';

@RoutePage()
class CreeatePostScreen extends StatelessWidget {
  const CreeatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Создание рекламы',
      ),
      body: Container(),
    );
  }
}
