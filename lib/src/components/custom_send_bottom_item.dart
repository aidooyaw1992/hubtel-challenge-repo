import 'package:flutter/material.dart';
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
        height: 42,
        width: 42,
        child: Column(
          children: [
            SvgPicture.asset(
              GenAssetSvgImages.money,
              height: 32,
              width: 32,
              colorFilter: isSelected
                  ? const ColorFilter.mode(Colors.black, BlendMode.srcIn)
                  : const ColorFilter.mode(GenColors.ash, BlendMode.srcIn),
            ),
            // const SizedBox(height: 2),
            Text("Send",
                style: isSelected
                    ? GenTextStyles.regular_14px.copyWith(
                        color: GenColors.ash,
                        fontSize: 14,
                      )
                    : GenTextStyles.regular_14px.copyWith(
                        fontSize: 14,
                      )),
          ],
        ));
  }
}
