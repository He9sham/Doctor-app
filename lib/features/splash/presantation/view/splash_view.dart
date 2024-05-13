import 'package:doctor/core/utils/finish_class.dart';
import 'package:doctor/features/splash/presantation/view/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) {
        if (!SplashController.hasShown.value) {
          finish(context);
        }
      },
      canPop: true,
      child: const Scaffold(
        body: SplashViewBody(),
      ),
    );
  }
void finish(BuildContext context) {
// Assuming ExitScreen is a Widget you want to navigate to
    SystemNavigator.pop(); // Call SystemNavigator.pop() directly after navigation

    SplashController.hasShown.value = true;
}
}
