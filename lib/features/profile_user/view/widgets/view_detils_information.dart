import 'package:doctor/core/helper/extensions.dart';
import 'package:doctor/core/utils/route.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';
import '../../data/models/profile_user_response.dart';

class ViewDetilsInformation extends StatelessWidget {
  const ViewDetilsInformation({super.key, required this.data});
  final ProfileUserResponseData data;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(99),
        Text(
          data.name!,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        verticalSpace(10),
        Text(
          data.email!,
          style: TextStyle(
            color: Colors.black.withOpacity(0.6),
            fontSize: 14,
          ),
        ),
        Divider(
          endIndent: 50,
          indent: 50,
          color: Colors.black.withOpacity(0.6),
          thickness: 0.5,
        ),
        verticalSpace(30),
        ItemRow(
          onpressed: () {
            context.pushNamed(Routes.personInformationScreen, arguments: data);
          },
          photo: 'assets/image/Icon.png',
          title: 'Personal Information',
        ),
        Divider(
          endIndent: 50,
          indent: 50,
          color: Colors.black.withOpacity(0.6),
          thickness: 0.5,
        ),
        const ItemRow(
          photo: 'assets/image/Icon2.png',
          title: 'My Test & Diagnostic',
        ),
        Divider(
          endIndent: 50,
          indent: 50,
          color: Colors.black.withOpacity(0.6),
          thickness: 0.5,
        ),
        const ItemRow(
          photo: 'assets/image/Icon3.png',
          title: 'Payment',
        ),
      ],
    );
  }
}

class ItemRow extends StatelessWidget {
  const ItemRow(
      {super.key, required this.photo, required this.title, this.onpressed});
  final String photo, title;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          Image.asset(photo),
          horizontalSpace(9),
          TextButton(
            onPressed: onpressed,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
