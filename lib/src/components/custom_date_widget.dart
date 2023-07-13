import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubtel_coding_challenge/src/general_styles.dart';

class CustomDateWidget extends StatelessWidget {
  final String date;
  const CustomDateWidget({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26.h,
      // width: 87.w,
      constraints: const BoxConstraints(minWidth: 87),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: GenColors.grey),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
        child: Text(
          date,
          style: GenTextStyles.extraBold_20px
              .copyWith(color: GenColors.darkGrey, fontSize: 10.sp),
        ),
      ),
    );
  }
}
