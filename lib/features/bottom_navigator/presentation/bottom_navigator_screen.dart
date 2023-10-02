import 'package:auto_route/auto_route.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sayakat/core/blocs/bottom_navigator_cubit/bottom_navigator_cubit.dart';
import 'package:sayakat/features/auto_mobiles/presentation/auto_mobiles_main_screen/auto_mobiles_screen.dart';
import 'package:sayakat/features/create_post/presentation/create_post_screen/create_post_screen.dart';
import 'package:sayakat/features/places/presentation/plases_main_screen/places_screen.dart';
import 'package:sayakat/features/profile/presentation/profile_main_screen/profile_screen.dart';
import 'package:sayakat/features/tours/presentation/tours_main_screen.dart/tours_screen.dart';
import 'package:sayakat/routes/mobile_auto_router.gr.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/widgets/custom_button.dart';
import 'package:sayakat/widgets/hidable/scroll_changeble_widget.dart';
import 'package:sayakat/widgets/hidable/scroll_hidable_widget.dart';

@RoutePage()
class BottomNavigatorScreen extends StatefulWidget {
  const BottomNavigatorScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorScreen> createState() => _BottomNavigatorScreenState();
}

class _BottomNavigatorScreenState extends State<BottomNavigatorScreen> {
  final ScrollController scrollController = ScrollController();

  late List<Widget> pages = [
    ToursScreen(scrollController: scrollController),
    PlacesScreen(scrollController: scrollController),
    const CreeatePostScreen(),
    AutoMobilesScreen(scrollController: scrollController),
    const ProfileScreen(),
  ];
  late List<String> texts = ['тур', 'место', '', 'машину', ''];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigatorCubit, BottomNavigatorState>(
      builder: (context, state) {
        return Scaffold(
          body: DoubleBackToCloseApp(
            snackBar: const SnackBar(
              content: Text('Нажмите еще раз, чтобы выйти'),
              duration: Duration(seconds: 1),
            ),
            child: pages[state.index],
          ),
          floatingActionButton: state.index != 4
              ? ScrollChangeble(
                  controller: scrollController,
                  newChild: Padding(
                    padding:
                        const EdgeInsets.only(left: 63, right: 63, bottom: 10),
                    child: CustomButton(
                      radius: 30,
                      color: Colors.indigo,
                      onPress: () {},
                      text: 'Добавить ${texts[state.index]}',
                    ),
                  ),
                  child: FloatingActionButton(
                    backgroundColor: Colors.indigo,
                    onPressed: () {
                      context.router.push(const CreeatePostRoute());
                    },
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                )
              : null,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(14),
              topRight: Radius.circular(14),
            ),
            child: ScrollHidable(
              preferredWidgetSize: const Size.fromHeight(90),
              controller: scrollController,
              enableOpacityAnimation: false,
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
                  if (index != 2) {
                    context.read<BottomNavigatorCubit>().getCurrentPage(index);
                  } else {
                    context.router.push(const CreeatePostRoute());
                  }
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
                    icon: Opacity(
                      opacity: 0,
                      child: Icon(Icons.add),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.car_rental_outlined),
                    label: 'Машины',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Профиль',
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
