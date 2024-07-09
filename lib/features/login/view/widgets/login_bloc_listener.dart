import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:doctor/core/helper/awesome_widgets.dart';
import 'package:doctor/core/helper/extensions.dart';
import 'package:doctor/core/utils/route.dart';
import 'package:doctor/features/login/logic/login_cubit.dart';
import 'package:doctor/features/login/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/notification_service/notifucation_assest.dart';

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
              builder: (context) {
                return const Center(
                  child: CircularProgressIndicator(),
                ); // Replace with your loading widget
              },
            );
          },
          success: (loginResponse)  {
            context.pop(); // Close the dialog
            context.pushNamed(Routes.navigationbarScreen, arguments: loginResponse);
            NotifucationAssest.setNotification(
                title: 'Welcome back', body: 'How are you today?', id: 2);
          },
          error: (error) {
            context.pop(); // Close the dialog
            awesomeWidgets(context, DialogType.error, 'Error',
                'Incorrect email or password');
          },
        );
      },
      child: const SizedBox
          .shrink(), // Empty widget to satisfy the BlocListener requirement
    );
  }
}
