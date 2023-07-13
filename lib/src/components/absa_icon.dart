import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/src/general_styles.dart';

class AbsaIcon extends StatelessWidget {
  const AbsaIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(shape: BoxShape.circle),
      height: 40,
      width: 40,
      child: Image.asset(GenAssetImages.absa),
    );
  }
}
