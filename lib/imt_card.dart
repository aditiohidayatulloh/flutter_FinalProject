import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IMTCard extends StatelessWidget {
  const IMTCard({
    super.key,
    required this.title,
    required this.value,
    required this.child,
  });

  final String title;
  final String value;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156.0.w,
      height: 215.0.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0.sp),
        color: Theme.of(context).primaryColor,
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18.0.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        Text(
          value,
          style: TextStyle(
              fontSize: 64.0.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        child,
      ]),
    );
  }
}
