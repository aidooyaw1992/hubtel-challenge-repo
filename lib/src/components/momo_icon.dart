import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/src/general_styles.dart';

class MomoIcon extends StatelessWidget {
  const MomoIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 40,
        decoration:
            const BoxDecoration(color: Colors.amber, shape: BoxShape.circle),
        child: Image.asset(GenAssetImages.momo));
  }
}
