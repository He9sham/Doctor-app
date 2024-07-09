import 'package:doctor/core/helper/shared_pref_helper.dart';
import 'package:doctor/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomStackFindNearby extends StatelessWidget {
  const CustomStackFindNearby({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeOfWidth(0.95, context),
      height: sizeOfHeight(0.26, context),
      child: Stack(
        children: [
          Positioned(
            top: sizeOfHeight(0.04, context),
            child: Container(
              width: 343.w,
              height: sizeOfHeight(0.21, context),
              decoration: BoxDecoration(
                color: const Color(0xff247CFF),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        ' Book and\n schedule with\n nearest doctor',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    verticalSpace(15),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 109,
                        height: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              SharedPrefHelper.clearAllData();
                            },
                            child: const Text(
                              'Find Nearby',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff247CFF),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: sizeOfWidth(0.54, context),
            child: Image.asset('assets/image/Image.png'),
          )
        ],
      ),
    );
  }
}
