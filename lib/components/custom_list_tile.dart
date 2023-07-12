import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/components/momo_icon.dart';
import 'package:hubtel_coding_challenge/components/transaction_status_widget.dart';
import 'package:hubtel_coding_challenge/models/transaction_model.dart';

class CustomListTile extends StatelessWidget {
  final HistoryInfo data;
  const CustomListTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Container(
      height: 300,
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.8),
        borderRadius: BorderRadius.circular(16),
        // color: Colors.red,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        children: [
          const SizedBox(height: 8),
          Row(children: [Text(data.time)]),
          const SizedBox(height: 4),
          Container(
            color: Colors.red,
            height: 100,
            child: Row(
              children: [
                const MomoIcon(),
                const SizedBox(width: 4),
                Container(
                    padding: const EdgeInsets.only(top: 16),
                    width: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.name,
                          style: const TextStyle(fontSize: 16),
                        ),
                        Text(
                          data.phone,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    )),
                const Spacer(),
                TransactionStatusWidget(status: data.status)
              ],
            ),
          )
        ],
      ),
    );
  }
}
