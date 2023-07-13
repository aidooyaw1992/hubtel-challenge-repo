import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hubtel_coding_challenge/src/general_styles.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  const CustomSearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: GenColors.grey, borderRadius: BorderRadius.circular(5)),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search",
            prefixIcon: Container(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(GenAssetSvgImages.search)),
          ),
        ),
      ),
    );
  }
}
