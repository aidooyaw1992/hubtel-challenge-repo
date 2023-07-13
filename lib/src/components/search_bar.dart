import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hubtel_coding_challenge/src/general_styles.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  const CustomSearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Row(
        children: [
          Container(
            height: 45,
            width: 0.8.sw,
            constraints: const BoxConstraints(minWidth: 0.7),
            decoration: BoxDecoration(
                color: GenColors.grey, borderRadius: BorderRadius.circular(5)),
            child: Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    prefixIcon: Container(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          GenAssetSvgImages.search,
                        ))),
                controller: controller,
              ),
            ),
          ),
          // const Spacer(),
          SizedBox(
              height: 45,
              width: 45,
              child: SvgPicture.asset(GenAssetSvgImages.settings))
        ],
      ),
    );
  }
}
