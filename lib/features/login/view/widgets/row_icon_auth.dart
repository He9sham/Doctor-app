import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowIconAuth extends StatelessWidget {
  const RowIconAuth({super.key});

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
          onPressed: () {
            // // ignore: unused_element
            // Future signinwithgoogle(BuildContext context) async {
            //   try {
            //     final GoogleSignInAccount? googleUser =
            //         await GoogleSignIn().signIn();
            //     if (googleUser == null) {
            //       return;
            //     }
            //     // Obtain the auth details from the request
            //     final GoogleSignInAuthentication googleAuth =
            //         await googleUser.authentication;

            //     // Create a new credential
            //     final credential = GoogleAuthProvider.credential(
            //       accessToken: googleAuth.accessToken,
            //       idToken: googleAuth.idToken,
            //     );

            //     // Once signed in, return the UserCredential
            //     await FirebaseAuth.instance.signInWithCredential(credential);

            //     // ignore: use_build_context_synchronously
            //     Navigator.pushNamed(context, AddKidView.addkidid);
            //     NotificationService notificationService = NotificationService();
            //     await notificationService.showInstantNotification(
            //         5, 'Welcome', 'How are you today?');
            //   } on Exception {
            //     NotificationService notificationService = NotificationService();
            //     await notificationService.showInstantNotification(
            //         6, 'Sorry', 'Please tru leater!');
            //   }
            // }
          },
          icon: const Icon(
            FontAwesomeIcons.google,
            size: 30,
          ),
        )
      ],
    );
  }
}
