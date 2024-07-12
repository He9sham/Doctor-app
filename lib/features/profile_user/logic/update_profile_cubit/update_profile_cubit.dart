import 'package:doctor/features/profile_user/data/models/update_profile_request.dart';
import 'package:doctor/features/profile_user/data/repo/update_profile_repo.dart';
import 'package:doctor/features/profile_user/logic/update_profile_cubit/update_profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  UpdateProfileCubit(this.updateProfileRepo)
      : super(const UpdateProfileState.initial());

  final UpdateProfileRepo updateProfileRepo;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitUpdateProfile() async {
    emit(const UpdateProfileState.updateProfileStateLoading());

    final response =
        await updateProfileRepo.updateProfileApi(UpdateProfileRequest(
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      password: passwordController.text,
      gender: 1,
    ));
    response.when(success: (updataprofileRespose) {
      emit(UpdateProfileState.updateProfileStateSuccess(updataprofileRespose));
    }, failure: (erorr) {
      emit(UpdateProfileState.updateProfileStateErorr(
          error: erorr.apiErrorModel.message ?? ""));
    });
  }
}
