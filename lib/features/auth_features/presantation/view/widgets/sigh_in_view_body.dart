import 'package:doctor/const.dart';
import 'package:doctor/features/auth_features/presantation/view/widgets/Custom_Text_felid.dart';
import 'package:doctor/features/auth_features/presantation/view/widgets/custom_container_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SighInViewBody extends StatelessWidget {
  const SighInViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.only(right: MediaQuery.sizeOf(context).width * 0.4),
          child: Text(
            'Letis Start with\nsign in',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontWeight: FontWeight.bold,
            ),
          ),
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
                  left: 37,
                  child: Container(
                    height: 390,
                    width: 341,
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
                            'Markaz ElAma',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: GoogleFonts.peralta().fontFamily,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const CustomTextfelid(
                            title: 'Email',
                            iconData: Icons.email_outlined,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const CustomTextfelid(
                            title: 'password',
                            iconData: Icons.lock,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const CustomContenerauth(
                            title: 'Sign in',
                          ),
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
    );
  }
}
