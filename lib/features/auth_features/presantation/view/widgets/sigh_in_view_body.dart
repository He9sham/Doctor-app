import 'package:doctor/features/auth_features/presantation/view/sections/appbar_section.dart';
import 'package:doctor/features/auth_features/presantation/view/widgets/InputUserEmailAndPassAndConfirmForSighIn.dart';
import 'package:doctor/features/auth_features/presantation/view/widgets/container_white_auth.dart';
import 'package:flutter/material.dart';

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
                  const Positioned(
                    top: 100,
                    child: ContainerWhiteAuth(),
                  ),
                  InputUserEmailAndPassAndConfirmForSighIn(
                      formstate: formstate),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
