import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/core/widgets/app_text_form_field.dart';
import 'package:doctor/features/profile_user/data/models/profile_user_response.dart';
import 'package:doctor/features/profile_user/logic/update_profile_cubit/update_profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextFormUpdateProfile extends StatelessWidget {
  const TextFormUpdateProfile(
      {super.key, required this.profileUserResponseData});
  final ProfileUserResponseData profileUserResponseData;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<UpdateProfileCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: '${profileUserResponseData.name}',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid name';
              }
            },
            controller: context.read<UpdateProfileCubit>().nameController,
          ),
          verticalSpace(16),
          AppTextFormField(
            hintText: '${profileUserResponseData.email}',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<UpdateProfileCubit>().emailController,
          ),
          verticalSpace(16),
          AppTextFormField(
            hintText: 'password',
            validator: (value) {
              
            },
          ),
          verticalSpace(16),
          AppTextFormField(
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid phone';
              }
            },
            controller: context.read<UpdateProfileCubit>().phoneController,
            hintText: '${profileUserResponseData.phone}',
          ),
        ],
      ),
    );
  }
}
