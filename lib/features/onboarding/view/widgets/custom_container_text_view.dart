import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';

class CustomContainerTextView extends StatelessWidget {
  const CustomContainerTextView(
      {super.key, required this.title, required this.subtitle});
  final String title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: sizeOfHeight(0.55, context),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Styles.textonbording24,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: Styles.textonbording20,
          ),
        ],
      ),
    );
  }
}
