import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/features/setting/view/widgets/custom_appbar_setting.dart';
import 'package:doctor/features/setting/view/widgets/list_view_security.dart';
import 'package:flutter/material.dart';

class SecurityView extends StatelessWidget {
  const SecurityView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const CustomAppbarSetting(title: 'Security', width: 90),
              verticalSpace(40),
              const ListViewSecurity(),
            ],
          ),
        ),
      ),
    );
  }
}
