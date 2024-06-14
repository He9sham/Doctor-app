import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:doctor/core/helper/awesome_widgets.dart';
import 'package:doctor/core/helper/extensions.dart';
import 'package:doctor/core/utils/route.dart';
import 'package:doctor/features/login/logic/login_cubit.dart';
import 'package:doctor/features/login/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
          success: (loginResposn) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            context.pop();
            awesomeWidgets(context, DialogType.error, 'Error',
                'Incorrect email or password');
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
