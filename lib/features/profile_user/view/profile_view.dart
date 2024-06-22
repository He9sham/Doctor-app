import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff247CFF),
      body: SafeArea(
        child: Column(
          children: [
            Container(),
          ],
        ),
      ),
    );
  }
}


class CustomAppBarforProfileUser extends StatelessWidget {
  const CustomAppBarforProfileUser({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
       IconButton(icon: const Icon(FontAwesomeIcons.a) ,  onPressed: (){},)
      ],
    );
  }
}