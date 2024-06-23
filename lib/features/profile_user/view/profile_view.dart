import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/features/profile_user/view/widgets/custom_appBar_for_profile_user.dart';
import 'package:doctor/features/profile_user/view/widgets/show_information_user.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff247CFF),
      body: SafeArea(
        child: Column(
          children: [
            verticalSpace(20),
            const CustomAppBarforProfileUser(),
            verticalSpace(60),
            const ShowInformationUser(),
          ],
        ),
      ),
    );
  }
}
