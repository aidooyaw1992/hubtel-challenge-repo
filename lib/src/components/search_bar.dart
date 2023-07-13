import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hubtel_coding_challenge/src/general_styles.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  const CustomSearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return SizedBox(
      height: 45,
      child: Row(
        children: [
          Container(
            width: deviceSize.width * 0.8,
            decoration: BoxDecoration(
                color: GenColors.darkGrey,
                borderRadius: BorderRadius.circular(5)),
            child: Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    prefixIcon: Container(
                        // height: 40,
                        // width: 40,
padding: EdgeInsets.all(10),
                        child: SvgPicture.asset(
                      GenAssetSvgImages.search,
                    ))),
                controller: controller,
              ),
            ),
          ),
          SizedBox(
              height: 45, child: SvgPicture.asset(GenAssetSvgImages.settings))
        ],
      ),
    );
  }
}
