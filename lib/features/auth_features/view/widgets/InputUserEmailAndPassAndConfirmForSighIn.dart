import 'package:doctor/const.dart';
import 'package:doctor/core/utils/app_router.dart';
import 'package:doctor/features/auth_features/data/models/login_request_body.dart';
import 'package:doctor/features/auth_features/view/widgets/Custom_Text_felid.dart';
import 'package:doctor/features/auth_features/view/widgets/buttom_navigate_row.dart';
import 'package:doctor/features/auth_features/view/widgets/custom_container_auth.dart';
import 'package:doctor/features/auth_features/view/widgets/custom_container_auth_Input_blue.dart';
import 'package:doctor/features/auth_features/view/widgets/login_bloc_listener.dart';
import 'package:doctor/features/auth_features/view/widgets/password_validations.dart';
import 'package:doctor/features/auth_features/view_models/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class InputUserEmailAndPassAndConfirmForSighIn extends StatefulWidget {
  const InputUserEmailAndPassAndConfirmForSighIn({
    super.key,
  });

  @override
  State<InputUserEmailAndPassAndConfirmForSighIn> createState() =>
      _InputUserEmailAndPassAndConfirmForSighInState();
}

class _InputUserEmailAndPassAndConfirmForSighInState
    extends State<InputUserEmailAndPassAndConfirmForSighIn> {
  bool hasLowercase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Positioned(
        left: MediaQuery.sizeOf(context).width * 0.07,
        child: CustomContainerAuthInputBlue(
          height: MediaQuery.sizeOf(context).height.h * 0.8,
          child: Form(
            key: context.read<LoginCubit>().formkey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Image.asset(klogoapp),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Markaz ElAmal',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: GoogleFonts.peralta().fontFamily,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextfelid(
                    obscureText: false,
                    controller: context.read<LoginCubit>().emailController,
                    onChanged: (data) {},
                    validator: (data) {
                      if (data == null || data.isEmpty) {
                        return 'please enter a valid email';
                      }
                      return null;
                    },
                    title: 'Email',
                    iconData: Icons.email_outlined,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextfelid(
                    obscureText: true,
                    controller: context.read<LoginCubit>().passwordController,
                    onChanged: (data) {},
                    validator: (data) {
                      if (data == null || data.isEmpty) {
                        return 'please enter a valid password';
                      }
                      return null;
                    },
                    title: 'password',
                    iconData: Icons.lock,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomContenerauth(
                    ontap: () {
                      {
                        validateThePassword(context);
                      }
                    },
                    title: 'Sign in',
                  ),
                  ButtomNavigateRow(
                    onpressed: () {
                      GoRouter.of(context).push(AppRouter.sighupview);
                    },
                    title: 'Don’t have an account?',
                    typeauth: 'Sign up',
                  ),
                  PasswordValidations(
                    hasLowerCase: hasLowercase,
                    hasUpperCase: hasUpperCase,
                    hasSpecialCharacters: hasSpecialCharacters,
                    hasNumber: hasNumber,
                    hasMinLength: hasMinLength,
                  ),
                  const LoginBlocListener(),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  void validateThePassword(BuildContext context) {
    if (context.read<LoginCubit>().formkey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoadingState(
            LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().emailController.text,
            ),
          );
    }
  }
}
