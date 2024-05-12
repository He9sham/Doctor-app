import 'package:doctor/const.dart';
import 'package:doctor/features/auth_features/presantation/view/widgets/sigh_in_view_body.dart';
import 'package:flutter/material.dart';

class SighInView extends StatelessWidget {
  const SighInView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kprimarycolorauth,
      body: SafeArea(child: SighInViewBody()),
    );
  }
}
