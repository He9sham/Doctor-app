import 'package:doctor/core/di/dependency_injection.dart';
import 'package:doctor/core/helper/constans.dart';
import 'package:doctor/core/helper/shared_pref_helper.dart';
import 'package:doctor/docapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  await checkIfLoggedInUser();
  runApp(const DoctorApp());
}

checkIfLoggedInUser() async {
  String? usertoken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);

  if (usertoken != null && usertoken.isNotEmpty) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
