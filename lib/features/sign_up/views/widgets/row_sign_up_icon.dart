
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowIconAuthForSignUp extends StatelessWidget {
  const  RowIconAuthForSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.facebook,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () async {
          },
          icon: const Icon(
            FontAwesomeIcons.google,
            size: 30,
          ),
        ),
      ],
    );
  }
}
