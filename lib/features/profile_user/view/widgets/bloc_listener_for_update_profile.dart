import 'package:doctor/core/helper/extensions.dart';
import 'package:doctor/core/utils/route.dart';
import 'package:doctor/features/profile_user/data/models/update_profile_response.dart';
import 'package:doctor/features/profile_user/logic/update_profile_cubit/update_profile_cubit.dart';
import 'package:doctor/features/profile_user/logic/update_profile_cubit/update_profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocListenerForUpdateProfile extends StatelessWidget {
  const BlocListenerForUpdateProfile({super.key, this.updateProfileResponse});
  final UpdateProfileResponse? updateProfileResponse;
  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateProfileCubit, UpdateProfileState>(
      listenWhen: (previous, current) {
        return current is UpdateProfileStateLoading ||
            current is UpdateProfileStateSuccess ||
            current is UpdateProfileStateSuccess;
      },
      listener: (context, state) {
        state.whenOrNull(
          updateProfileStateLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
          updateProfileStateSuccess: (updateprofileresponse) {
            context.pop();
            context.pushNamed(Routes.profileUserScreen);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Done'),
              ),
            );
            context.read<UpdateProfileCubit>().emitUpdateProfile();
          },
          updateProfileStateErorr: (error) {
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(updateProfileResponse!.message ?? ''),
              ),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
