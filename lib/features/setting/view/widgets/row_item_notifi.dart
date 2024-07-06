
import 'package:doctor/features/setting/view/widgets/icon_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowItem extends StatelessWidget {
  const RowItem({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const Spacer(),
          SizedBox(
            width: 30.w,
            height: 30.h,
            child: const IconSwitch(),
          ),
        ],
      ),
    );
  }
}
