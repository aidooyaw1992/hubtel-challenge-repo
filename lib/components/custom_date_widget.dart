import 'package:flutter/material.dart';

class CustomDateWidget extends StatelessWidget {
  final String date;
  const CustomDateWidget({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 80),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: Text(
        date,
        style: TextStyle(color: Colors.blueGrey[200]),
      ),
    );
  }
}
