import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../general_styles.dart';

class CustomHistoryBottomItem extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onPressed;
  const CustomHistoryBottomItem({
    super.key,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 65,
        width: 65,
        child: Column(
          children: [
            const SizedBox(height: 4),
            SvgPicture.asset(
              GenAssetSvgImages.history,
              height: 40,
              width: 40,
              // colorFilter: isSelected
              //     ? const ColorFilter.mode(Colors.black, BlendMode.srcIn)
              //     : const ColorFilter.mode(GenColors.ash, BlendMode.srcIn),
            ),
            const Spacer(),
            Text("History",
                style: isSelected
                    ? GenTextStyles.regular_14px.copyWith(
                        fontSize: 10.sp,
                      )
                    : GenTextStyles.regular_14px.copyWith(
                        color: GenColors.ash,
                        fontSize: 10.sp,
                      )),
          ],
        ));
  }
}
