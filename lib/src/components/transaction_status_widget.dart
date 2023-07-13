import 'package:flutter/material.dart';

class TransactionStatusWidget extends StatelessWidget {
  final String status;
  const TransactionStatusWidget({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: status == "Failed" ? Colors.redAccent : Colors.green[200],
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          status == "Failed"
              ? const Icon(Icons.close_rounded)
              : const Icon(
                  Icons.verified_rounded,
                  color: Colors.green,
                ),
          const SizedBox(width: 4),
          Text(
            status,
            style: TextStyle(
                color: status == "Failed" ? Colors.red : Colors.green),
          )
        ],
      ),
    );
  }
}
