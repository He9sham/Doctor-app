import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:doctor/core/helper/awesome_widgets.dart';
import 'package:doctor/core/utils/app_router.dart';
import 'package:doctor/features/sign_up/view_models/signup_cubit/sign_up_cubit.dart';
import 'package:doctor/features/sign_up/view_models/signup_cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit , SignupState>(
      listenWhen: (previous, current) =>
          current is SignupLoading || current is SignupError || current is SignupSuccess,
      listener: (context , state)
      {
        state.whenOrNull(
          signupLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
          signupError: (error) {
            context.pop();
            awesomeWidgets(context, DialogType.error, 'Error', 'The email has already Created');
          },
          signupSuccess: (loginResposn) {
            context.pop();
            GoRouter.of(context).push(AppRouter.welcomeview);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
