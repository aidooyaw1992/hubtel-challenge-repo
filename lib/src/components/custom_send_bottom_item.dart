import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../general_styles.dart';

class CustomSendBottomItem extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onPressed;
  const CustomSendBottomItem({
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
            Container(
              height: 45,
              width: 45,
              padding: const EdgeInsets.all(8),
              child: SvgPicture.asset(
                GenAssetSvgImages.money,
                // height: 32,
                // width: 32,
                colorFilter: isSelected
                    ? const ColorFilter.mode(Colors.black, BlendMode.srcIn)
                    : const ColorFilter.mode(GenColors.ash, BlendMode.srcIn),
              ),
            ),
            const Spacer(),
            Text("Send",
                style: isSelected
                    ? GenTextStyles.regular_14px.copyWith(
                        fontSize: 10.sp,
                      )
                    : GenTextStyles.regular_14px.copyWith(
                        color: GenColors.ash,
                        fontSize: 10.sp,
                      )
                    ),
          ],
        ));
  }
}
