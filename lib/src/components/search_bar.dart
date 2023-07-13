import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/src/general_styles.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  const CustomSearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          // height: 98,
          width: deviceSize.width * 0.8,
          decoration: BoxDecoration(
              color: GenColors.darkGrey, borderRadius: BorderRadius.circular(5)),
          child: Expanded(
            child: TextField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search)),
              controller: controller,
            ),
          ),
        ),
        IconButton(
            onPressed: () {
              print("filter pressed");
            },
            icon: const Icon(Icons.menu))
      ],
    );
  }
}
