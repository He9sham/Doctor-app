import 'package:doctor/const.dart';
import 'package:doctor/core/utils/app_router.dart';
import 'package:doctor/features/auth_features/view/widgets/Custom_Text_felid.dart';
import 'package:doctor/features/auth_features/view/widgets/buttom_navigate_row.dart';
import 'package:doctor/features/auth_features/view/widgets/custom_container_auth.dart';
import 'package:doctor/features/auth_features/view/widgets/custom_container_auth_Input_blue.dart';
import 'package:doctor/features/auth_features/view/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class InputUserEmailAndPassAndConfirmForSighUp extends StatefulWidget {
  const InputUserEmailAndPassAndConfirmForSighUp({
    super.key,
    required this.formstate,
  });
  final GlobalKey<FormState> formstate;

  @override
  State<InputUserEmailAndPassAndConfirmForSighUp> createState() =>
      _InputUserEmailAndPassAndConfirmForSighUpState();
}

bool hasLowercase = false;
bool hasUpperCase = false;
bool hasSpecialCharacters = false;
bool hasNumber = false;
bool hasMinLength = false;

class _InputUserEmailAndPassAndConfirmForSighUpState
    extends State<InputUserEmailAndPassAndConfirmForSighUp> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: MediaQuery.sizeOf(context).width * 0.07,
      child: CustomContainerAuthInputBlue(
        height: MediaQuery.sizeOf(context).height.h * 0.9,
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
                onChanged: (data) {},
                validator: (data) {
                  if (data == null) {
                    return 'Enter a email';
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
                onChanged: (data) {},
                validator: (data) {
                  if (data == null) {
                    return 'Enter a password';
                  }
                  return null;
                },
                title: 'password',
                iconData: Icons.lock,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextfelid(
                obscureText: true,
                onChanged: (data) {},
                validator: (data) {
                  if (data == null) {
                    return 'Enter a confirm password';
                  }
                  return null;
                },
                title: 'Confirm password',
                iconData: Icons.lock,
              ),
              const SizedBox(
                height: 8,
              ),
              PasswordValidations(
                hasLowerCase: hasLowercase,
                hasUpperCase: hasUpperCase,
                hasSpecialCharacters: hasSpecialCharacters,
                hasNumber: hasNumber,
                hasMinLength: hasMinLength,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomContenerauth(
                ontap: () {
                  {
                    GoRouter.of(context).push(AppRouter.welcomeview);
                  }
                },
                title: 'Sign Up',
              ),
              ButtomNavigateRow(
                onpressed: () {
                  GoRouter.of(context).push(AppRouter.sighinview);
                },
                title: 'Have alreadyan account?',
                typeauth: 'Sign in',
              )
            ],
          ),
        ),
      ),
    );
  }
}
