import 'package:flutter/material.dart';

class FilterIcon extends StatelessWidget {
  const FilterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: Image.asset("assets/filter_icon.png"),
    );
  }
}
