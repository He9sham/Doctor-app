import 'package:doctor/const.dart';
import 'package:doctor/core/utils/app_router.dart';
import 'package:doctor/features/auth_features/presantation/view/sections/appbar_section.dart';
import 'package:doctor/features/auth_features/presantation/view/widgets/Custom_Text_felid.dart';
import 'package:doctor/features/auth_features/presantation/view/widgets/custom_container_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SighInViewBody extends StatefulWidget {
  const SighInViewBody({super.key});

  @override
  State<SighInViewBody> createState() => _SighInViewBodyState();
}

class _SighInViewBodyState extends State<SighInViewBody> {
  GlobalKey<FormState> formstate = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formstate,
      child: Column(
        children: [
          const AppbarSection(
            title: 'Letis Start with\nsign in',
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.2,
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height / 1.5,
              child: Stack(
                children: [
                  Positioned(
                    top: 100,
                    child: Container(
                      height: MediaQuery.sizeOf(context).height / 1.8,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50)),
                      ),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.sizeOf(context).width * 0.07,
                    child: Container(
                      height: 395,
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
                              height: 20,
                            ),
                            CustomContenerauth(
                              ontap: () {
                                if (formstate.currentState!.validate()) {}
                              },
                              title: 'Sign in',
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Don’t have an account?',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    GoRouter.of(context)
                                        .push(AppRouter.sighupview);
                                  },
                                  child: const Text(
                                    'Sign Up',
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
