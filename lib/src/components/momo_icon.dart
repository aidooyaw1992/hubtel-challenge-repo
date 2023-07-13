import 'package:flutter/material.dart';

class MomoIcon extends StatelessWidget {
  const MomoIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 52,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.yellow,
      ),
      child: ClipOval(
        child: Image.asset(
          "assets/momo.jpeg",
          height: 18,
          width: 18,
        ),
      ),
    );
  }
}
