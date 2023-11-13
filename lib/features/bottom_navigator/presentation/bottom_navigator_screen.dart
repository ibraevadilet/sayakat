import 'package:auto_route/auto_route.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sayakat/core/blocs/bottom_navigator_cubit/bottom_navigator_cubit.dart';
import 'package:sayakat/features/bottom_navigator/presentation/items_list.dart';
import 'package:sayakat/features/bottom_navigator/presentation/pages_list.dart';
import 'package:sayakat/theme/app_colors.dart';

@RoutePage()
class BottomNavigatorScreen extends StatelessWidget {
  const BottomNavigatorScreen({Key? key}) : super(key: key);

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
          extendBody: true,
          bottomNavigationBar: CurvedNavigationBar(
            onTap: context.read<BottomNavigatorCubit>().getCurrentPage,
            buttonBackgroundColor: AppColors.orangeff5733,
            index: state.index,
            backgroundColor: Colors.transparent,
            items: icons
                .map<Widget>(
                  (IconData icon) => Icon(
                    icon,
                    size: 30,
                    color: icons.indexOf(icon) == state.index
                        ? Colors.white
                        : null,
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
