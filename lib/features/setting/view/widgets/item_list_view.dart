
import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/features/setting/view/widgets/item_setting_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ItemSettingView(
          icon: FontAwesomeIcons.bell,
          title: 'Notification',
        ),
        const Divider(
          endIndent: 17,
          indent: 17,
        ),
        verticalSpace(28),
        const ItemSettingView(
          icon: FontAwesomeIcons.circleQuestion,
          title: 'FAQ',
        ),
        const Divider(
          endIndent: 17,
          indent: 17,
        ),
        verticalSpace(28),
        const ItemSettingView(
          icon: FontAwesomeIcons.lock,
          title: 'Security',
        ),
        const Divider(
          endIndent: 17,
          indent: 17,
        ),
        verticalSpace(28),
        const ItemSettingView(
          icon: FontAwesomeIcons.arrowRightFromBracket,
          title: 'Logout',
          color: Colors.red,
        ),
        const Divider(
          endIndent: 17,
          indent: 17,
        ),
      ],
    );
  }
}
