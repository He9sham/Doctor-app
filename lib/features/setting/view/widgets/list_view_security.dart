
import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/features/setting/view/widgets/row_item_notifi.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListViewSecurity extends StatelessWidget {
  const ListViewSecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RowItem(
          title: 'Remember password',
        ),
        const Divider(
          endIndent: 11,
          indent: 11,
        ),
        verticalSpace(20),
        const RowItem(
          title: 'Face ID',
        ),
        const Divider(
          endIndent: 11,
          indent: 11,
        ),
        verticalSpace(20),
        const RowItem(
          title: 'PIN',
        ),
        const Divider(
          endIndent: 11,
          indent: 11,
        ),
        verticalSpace(20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text('Google Authenticator'),
              Spacer(),
              Icon(
                FontAwesomeIcons.chevronRight,
                size: 14,
              ),
            ],
          ),
        ),
        const Divider(
          endIndent: 11,
          indent: 11,
        ),
      ],
    );
  }
}
