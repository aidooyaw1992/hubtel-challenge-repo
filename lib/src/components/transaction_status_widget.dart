import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hubtel_coding_challenge/src/general_styles.dart';

class TransactionStatusWidget extends StatelessWidget {
  final String status;
  const TransactionStatusWidget({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: status == "Failed" ? GenColors.lightRed : GenColors.lime,
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 15,
            width: 15,
            child: status == "Failed"
                ? SvgPicture.asset(GenAssetSvgImages.close)
                : SvgPicture.asset(
                    GenAssetSvgImages.success,
                  ),
          ),
          // const Icon(
          //     Icons.verified_rounded,
          //     color: Colors.green,
          //   ),
          const SizedBox(width: 4),
          Text(status,
              style: GenTextStyles.extraBold_10px.copyWith(
                  color:
                      status == "Failed" ? GenColors.crimson : GenColors.green))
        ],
      ),
    );
  }
}
