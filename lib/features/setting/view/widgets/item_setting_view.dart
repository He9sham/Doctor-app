
import 'package:doctor/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemSettingView extends StatelessWidget {
  const ItemSettingView(
      {super.key, required this.title, required this.icon, this.color});
  final String title;
  final IconData icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          horizontalSpace(10),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            FontAwesomeIcons.chevronRight,
            size: 14,
          ),
        ],
      ),
    );
  }
}
