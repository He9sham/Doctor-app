import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/core/widgets/app_text_button.dart';
import 'package:doctor/features/profile_user/data/models/profile_user_response.dart';
import 'package:doctor/features/profile_user/logic/update_profile_cubit/update_profile_cubit.dart';
import 'package:doctor/features/profile_user/view/widgets/bloc_listener_for_update_profile.dart';
import 'package:doctor/features/profile_user/view/widgets/text_form_update_profile.dart';
import 'package:doctor/features/setting/view/widgets/custom_appbar_setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonInformation extends StatelessWidget {
  const PersonInformation({super.key, required this.profileUserResponseData});
  final ProfileUserResponseData profileUserResponseData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomAppbarSetting(
                    title: 'Personal information', width: 50),
                verticalSpace(48),
                Image.asset('assets/image/Avatar.png'),
                verticalSpace(51),
                TextFormUpdateProfile(
                  profileUserResponseData: profileUserResponseData,
                ),
                verticalSpace(24),
                const Text(
                  'When you set up your personal information settings, you should take care to provide accurate information.',
                  style: TextStyle(
                    color: Color(0xff757575),
                  ),
                ),
                verticalSpace(70),
                AppTextButton(
                  buttonText: 'Save',
                  onPressed: () {
                    validateThenDoUpdateProfile(context);
                  },
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const BlocListenerForUpdateProfile(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoUpdateProfile(BuildContext context) {
    if (context.read<UpdateProfileCubit>().formKey.currentState!.validate()) {
      context.read<UpdateProfileCubit>().emitUpdateProfile();
    }
  }
}
