import 'package:doctor/features/login/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowIconAuth extends StatelessWidget {
  const RowIconAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.facebook,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () async {
            await context.read<LoginCubit>().signinwithgoogle(context);
          },
          icon: const Icon(
            FontAwesomeIcons.google,
            size: 30,
          ),
        ),
      ],
    );
  }
}
