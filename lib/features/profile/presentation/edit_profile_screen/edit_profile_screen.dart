import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sayakat/features/profile/domain/entity/user_entity.dart';
import 'package:sayakat/features/profile/presentation/edit_profile_screen/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:sayakat/features/profile/presentation/edit_profile_screen/widgets/image_widget.dart';
import 'package:sayakat/server/service_locator.dart';
import 'package:sayakat/widgets/custom_app_bar.dart';
import 'package:sayakat/widgets/custom_button.dart';
import 'package:sayakat/widgets/custom_text_fields.dart';

@RoutePage()
class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key, required this.currantUserData});

  final UserEntity currantUserData;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<EditProfileCubit>()..getCurrantUserInfo(currantUserData),
      child: Scaffold(
        appBar: const CustomAppBar(title: 'Редактировать профиль'),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Builder(
              builder: (context) => Column(
                children: [
                  const SizedBox(height: 12),
                  ImageWidget(currantImage: currantUserData.image),
                  const SizedBox(height: 24),
                  CustomTextField(
                    controller:
                        context.read<EditProfileCubit>().emailController,
                    labelText: 'Email',
                  ),
                  const SizedBox(height: 12),
                  CustomTextField(
                    controller: context.read<EditProfileCubit>().nameController,
                    labelText: 'Имя',
                  ),
                  const Spacer(),
                  CustomButton(
                    color: Colors.blue,
                    onPress: () {},
                    text: 'Сохранить',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
