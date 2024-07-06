
import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/features/setting/view/widgets/row_item_notifi.dart';
import 'package:flutter/material.dart';

class NotificationItemList extends StatelessWidget {
  const NotificationItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RowItem(
          title: 'Notification from DocNow',
        ),
        const Divider(
          endIndent: 11,
          indent: 11,
        ),
        verticalSpace(20),
        const RowItem(
          title: 'Sound',
        ),
        const Divider(
          endIndent: 11,
          indent: 11,
        ),
        verticalSpace(20),
        const RowItem(
          title: 'Vibrate',
        ),
        const Divider(
          endIndent: 11,
          indent: 11,
        ),
        verticalSpace(20),
        const RowItem(
          title: 'App Updates',
        ),
        const Divider(
          endIndent: 11,
          indent: 11,
        ),
        verticalSpace(20),
        const RowItem(
          title: 'Special Offers',
        ),
        const Divider(
          endIndent: 11,
          indent: 11,
        ),
      ],
    );
  }
}
