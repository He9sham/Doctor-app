import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/core/widgets/app_text_button.dart';
import 'package:doctor/core/widgets/app_text_form_field.dart';
import 'package:doctor/features/profile_user/data/models/profile_user_response.dart';
import 'package:doctor/features/setting/view/widgets/custom_appbar_setting.dart';
import 'package:flutter/material.dart';

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
                AppTextFormField(
                  hintText: '${profileUserResponseData.name}',
                  validator: (data) {},
                ),
                verticalSpace(16),
                AppTextFormField(
                  hintText: '${profileUserResponseData.email}',
                  validator: (data) {},
                ),
                verticalSpace(16),
                AppTextFormField(
                  hintText: 'password',
                  validator: (data) {},
                ),
                verticalSpace(16),
                AppTextFormField(
                  keyboardType: TextInputType.phone,
                  validator: (data) {},
                  hintText: '${profileUserResponseData.phone}',
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
                  onPressed: () {},
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
