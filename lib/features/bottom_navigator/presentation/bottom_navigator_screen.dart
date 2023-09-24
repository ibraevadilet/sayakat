import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sayakat/core/blocs/bottom_navigator_cubit/bottom_navigator_cubit.dart';
import 'package:sayakat/features/auto_mobiles/presentation/auto_mobiles_screen.dart';
import 'package:sayakat/features/chats/presentation/chat_screen.dart';
import 'package:sayakat/features/companies/presentation/companies_screen.dart';
import 'package:sayakat/features/places/presentation/plases_main_screen/places_screen.dart';
import 'package:sayakat/features/profile/presentation/profile_screen.dart';
import 'package:sayakat/features/tours/presentation/tours_main_screen.dart/tours_screen.dart';
import 'package:sayakat/theme/app_colors.dart';

@RoutePage()
class BottomNavigatorScreen extends StatelessWidget {
  const BottomNavigatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigatorCubit, BottomNavigatorState>(
      builder: (context, state) {
        return Scaffold(
          body: pages[state.index],
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(14),
              topRight: Radius.circular(14),
            ),
            child: BottomNavigationBar(
              backgroundColor: AppColors.orangeff5733,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: AppColors.white,
              unselectedFontSize: 12,
              selectedLabelStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              unselectedItemColor: AppColors.white.withOpacity(0.5),
              currentIndex: state.index,
              onTap: (index) {
                context.read<BottomNavigatorCubit>().getCurrentPage(index);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.tour),
                  label: 'Туры',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.place_sharp),
                  label: 'Места',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.car_rental_outlined),
                  label: 'Машины',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: 'Чаты',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.factory),
                  label: 'Компании',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Профиль',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

List<Widget> pages = [
  const ToursScreen(),
  const PlacesScreen(),
  const AutoMobilesScreen(),
  const ChatScreen(),
  const CompaniesScreen(),
  const ProfileScreen(),
];
