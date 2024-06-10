import 'package:doctor/core/helper/constans.dart';
import 'package:doctor/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp.router(
        // Assuming AppRouter.homepage and AppRouter.router need to be explicitly typed or casted
        routerConfig: checkRoutertoken(context),
        debugShowCheckedModeBanner: false,
      ),
    );
  }

  Object checkRoutertoken(context) => isLoggedInUser?GoRouter.of(context).push(AppRouter.homepage) : AppRouter.router;
}
