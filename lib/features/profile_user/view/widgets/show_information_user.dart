import 'package:doctor/features/profile_user/view/widgets/bloc_builder_for_profile.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';

class ShowInformationUser extends StatelessWidget {
  const ShowInformationUser({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeOfHeight(0.8, context),
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: sizeOfHeight(0.1, context),
            child: Container(
              height: sizeOfHeight(0.7, context),
              width: sizeOfWidth(0.999, context),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: const BlocBuilderForProfile(),
            ),
          ),
          Positioned(
            right: sizeOfWidth(0.33, context),
            bottom: sizeOfHeight(0.6, context),
            child: Image.asset('assets/image/Avatar.png'),
          ),
        ],
      ),
    );
  }
}
