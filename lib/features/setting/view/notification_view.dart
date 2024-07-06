import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/features/setting/view/widgets/custom_appbar_setting.dart';
import 'package:doctor/features/setting/view/widgets/notification_item_list.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const CustomAppbarSetting(
                title: 'Notification',
                width: 80,
              ),
              verticalSpace(35),
              const NotificationItemList()
            ],
          ),
        ),
      ),
    );
  }
}
