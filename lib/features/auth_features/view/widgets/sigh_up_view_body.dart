import 'package:doctor/features/auth_features/view/sections/appbar_section.dart';
import 'package:doctor/features/auth_features/view/widgets/InputUserEmailAndPassAndConfirmForSighUp.dart';
import 'package:doctor/features/auth_features/view/widgets/container_white_auth.dart';
import 'package:flutter/material.dart';

class SighUpViewBody extends StatefulWidget {
  const SighUpViewBody({super.key});

  @override
  State<SighUpViewBody> createState() => _SighUpViewBodyState();
}

class _SighUpViewBodyState extends State<SighUpViewBody> {
  GlobalKey<FormState> formstate = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppbarSection(
          title: 'Letis Start with\nsign up',
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
                InputUserEmailAndPassAndConfirmForSighUp(
                  formstate: formstate,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
