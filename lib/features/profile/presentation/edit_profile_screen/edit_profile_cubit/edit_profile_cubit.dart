import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sayakat/features/profile/domain/entity/user_entity.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit() : super(const EditProfileState.initial());

  final emailController = TextEditingController();
  final nameController = TextEditingController();
  String currantImage = '';
  String? newImage;

  void getCurrantUserInfo(UserEntity currantUserData) {
    emailController.text = currantUserData.email;
    nameController.text = currantUserData.name;
    currantImage = currantUserData.image;
  }

  void selectImage(String image) {
    emit(const EditProfileState.initial());
    newImage = image;
    emit(const EditProfileState.success());
  }
}
