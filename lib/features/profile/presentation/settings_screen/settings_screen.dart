import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/features/profile/presentation/profile_main_screen/widgets/profile_widget.dart';
import 'package:sayakat/widgets/custom_app_bar.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Настройки программы'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            ProfileWidget(
              title: 'Уведомления',
              icon: Icons.notifications,
              onTap: () {},
            ),
            ProfileWidget(
              title: 'Тема',
              icon: Icons.color_lens,
              onTap: () {},
            ),
            ProfileWidget(
              title: 'О программе',
              icon: Icons.info_outline,
              onTap: () {},
            ),
            ProfileWidget(
              title: 'Выйти',
              icon: Icons.exit_to_app,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
