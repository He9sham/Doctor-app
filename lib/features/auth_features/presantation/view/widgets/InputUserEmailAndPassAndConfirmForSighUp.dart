import 'package:doctor/const.dart';
import 'package:doctor/core/utils/app_router.dart';
import 'package:doctor/features/auth_features/presantation/view/widgets/Custom_Text_felid.dart';
import 'package:doctor/features/auth_features/presantation/view/widgets/custom_container_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class InputUserEmailAndPassAndConfirmForSighUp extends StatelessWidget {
  const InputUserEmailAndPassAndConfirmForSighUp({
    super.key,
    required this.formstate,
  });
  final GlobalKey<FormState> formstate;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: MediaQuery.sizeOf(context).width * 0.07,
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.6,
        width: MediaQuery.sizeOf(context).width * 0.85,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          border: Border.all(
            color: Colors.white,
            width: 8,
          ),
        ),
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
                onChanged: (data) {},
                validator: (data) {
                  if (data == null) {
                    return 'Enter a email';
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
                onChanged: (data) {},
                validator: (data) {
                  if (data == null) {
                    return 'Enter a email';
                  }
                  return null;
                },
                title: 'Confirm password',
                iconData: Icons.lock,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Have already an account?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.tealAccent,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
