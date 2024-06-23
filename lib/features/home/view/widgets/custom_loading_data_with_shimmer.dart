
import 'package:doctor/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SetupSpecializationloading extends StatelessWidget {
  const SetupSpecializationloading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeOfWidth(0.9, context),
      height: sizeOfHeight(0.5, context),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(340),
                      ),
                      height: sizeOfHeight(0.0009, context),
                      width: sizeOfWidth(0.2, context),
                    ),
                  );
                },
              ),
            ),
            verticalSpace(30),
            Expanded(
              flex: 3,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Container(
                      height: sizeOfHeight(0.06, context),
                      width: sizeOfWidth(0.9, context),
                      color: Colors.white,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
