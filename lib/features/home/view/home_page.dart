import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/features/home/view/widgets/custom_appbar.dart';
import 'package:doctor/features/home/view/widgets/custom_stack_find_nearby.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              verticalSpace(15),
              const CustomAppbar(),
              const CustomStackFindNearby()
            ],
          ),
        ),
      ),
    );
  }
}
