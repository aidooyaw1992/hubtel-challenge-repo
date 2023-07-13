import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubtel_coding_challenge/src/general_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomHomeBottomItem extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomHomeBottomItem({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          Container(
            height: 56,
            width: 56,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: GenColors.teal),
            child: SvgPicture.asset(
              GenAssetSvgImages.home,
              height: 24,
              width: 24,
            ),
          ),
          const SizedBox(width: 16),
          Container(
            width: 2.w,
            height: 56,
            color: GenColors.darkGrey,
          )
        ],
      ),
    );
  }
}
