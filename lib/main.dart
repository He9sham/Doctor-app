import 'package:doctor/core/di/dependency_injection.dart';
import 'package:doctor/docapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
   await ScreenUtil.ensureScreenSize();
  setupGetIt();
  runApp(const DoctorApp());
}
