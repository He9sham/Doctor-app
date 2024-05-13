import 'package:doctor/const.dart';
import 'package:doctor/features/auth_features/presantation/view/widgets/sigh_up_view_body.dart';
import 'package:flutter/material.dart';

class SighUpView extends StatelessWidget {
  const SighUpView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kprimarycolorauth,
      body: SafeArea(child: SighUpViewBody()),
    );
  }
}
