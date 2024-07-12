import 'package:doctor/features/profile_user/logic/profile_user_cubit/profile_user_cubit.dart';
import 'package:doctor/features/profile_user/logic/profile_user_cubit/profile_user_state.dart';
import 'package:doctor/features/profile_user/view/widgets/view_detils_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/helper/spacing.dart';

class BlocBuilderForProfile extends StatelessWidget {
  const BlocBuilderForProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileUserCubit, ProfileUserState>(
        buildWhen: (previous, current) {
      return current is ProfileUserloading ||
          current is ProfileUsersussess ||
          current is ProfileUsererror;
    }, builder: (context, state) {
      return state.maybeWhen(
        profileUserloading: () {
          return const ProfileUserLoading();
        },
        profileUsersussess: (profileUserResponseModel) {
          // Assuming profileUserData is a List<ProfileUserResponseData?>
          var data = profileUserResponseModel.profileUserData?.firstOrNull;
          if (data != null) {
            return ViewDetilsInformation(data: data);
          } else {
            // Handle the case where the list is empty
            return const SizedBox.shrink();
          }
        },
        profileUsererror: (errorhandler) {
          return const SizedBox.shrink();
        },
        orElse: () {
          return const SizedBox.shrink();
        },
      );
    });
  }
}

class ProfileUserLoading extends StatelessWidget {
  const ProfileUserLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeOfWidth(0.09, context),
      height: sizeOfHeight(0.5, context),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Column(
          children: [
            verticalSpace(80),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Container(
                      height: sizeOfHeight(0.04, context),
                      width: sizeOfWidth(0.03, context),
                      color: Colors.white,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
