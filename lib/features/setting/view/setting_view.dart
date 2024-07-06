import 'package:doctor/features/setting/view/widgets/custom_appbar_setting.dart';
import 'package:doctor/features/setting/view/widgets/item_list_view.dart';
import 'package:flutter/material.dart';

import '../../../core/helper/spacing.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const CustomAppbarSetting(),
              verticalSpace(35),
              const ItemListView(),
            ],
          ),
        ),
      ),
    );
  }
}
