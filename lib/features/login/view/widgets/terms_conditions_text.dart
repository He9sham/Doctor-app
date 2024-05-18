import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermsConditionsText extends StatelessWidget {
  const TermsConditionsText({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'By logging, you agree to our',
                style: Styles.font13GrayRegular,
              ),
              TextSpan(
                text: ' Terms & Conditions',
                style: Styles.font13DarkBlueMedium,
              ),
              TextSpan(
                text: ' and',
                style: Styles.font13GrayRegular.copyWith(height: 1.5),
              ),
              TextSpan(
                text: ' Privacy Policy',
                style: Styles.font13DarkBlueMedium,
              ),
            ],
          ),
        )
      ],
    );
  }
}
