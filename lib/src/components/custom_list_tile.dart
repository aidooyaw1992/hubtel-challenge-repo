import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hubtel_coding_challenge/src/components/absa_icon.dart';
import 'package:hubtel_coding_challenge/src/components/transaction_status_widget.dart';
import 'package:hubtel_coding_challenge/src/general_styles.dart';
import 'package:hubtel_coding_challenge/src/models/transaction_model.dart';

import 'momo_icon.dart';

class CustomListTile extends StatelessWidget {
  final HistoryInfo data;
  const CustomListTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 178,
      constraints: const BoxConstraints(minHeight: 162, maxHeight: 198),
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: Border.all(color: GenColors.darkGrey, width: 1),
        borderRadius: BorderRadius.circular(16),
        // color: Colors.red,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          const SizedBox(height: 8),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                data.time,
                style: GenTextStyles.regular_14px
                    .copyWith(fontSize: 12.sp, color: GenColors.darkGrey),
              ),
            )
          ]),
          const SizedBox(height: 4),
          Container(
            // color: Colors.red,
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
            // height: 80,
            constraints: const BoxConstraints(minHeight: 48),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                data.paymentMode == "momo"
                    ? const MomoIcon()
                    : const AbsaIcon(),
                const SizedBox(width: 8),
                SizedBox(
                    // width: 100,
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 2),
                    if (data.paymentMode == "momo") ...[
                      Text(
                        data.firstName,
                        style:
                            GenTextStyles.regular_14px.copyWith(fontSize: 14),
                      ),
                      data.secondName != null
                          ? Text(
                              data.secondName!,
                              style: GenTextStyles.regular_14px
                                  .copyWith(fontSize: 14),
                            )
                          : const SizedBox.shrink()
                    ],
                    if (data.paymentMode == "bank") ...[
                      Text(
                        '${data.bankName}',
                        style:
                            GenTextStyles.regular_14px.copyWith(fontSize: 14),
                      ),
                    ]
                  ],
                )),
                const Spacer(),
                Container(
                  color: Colors.transparent,
                  child: TransactionStatusWidget(status: data.status),
                )
              ],
            ),
          ),
          Container(
            // height: 32,
            // color: Colors.blue,
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    data.phone,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
                Text(
                  'GHS ${data.amount}',
                  style: GenTextStyles.extraBold_10px
                      .copyWith(fontSize: 14, color: Colors.black),
                )
              ],
            ),
          ),
          // const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
            child: Divider(thickness: 1.2),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.only(left: 8, right: 8),
            width: 1.sw,
            child: Row(
              children: [
                SvgPicture.asset(GenAssetSvgImages.person,
                    height: 25, width: 25),
                const SizedBox(width: 8),
                Text('${data.type}'),
                const SizedBox(width: 8),
                if (data.description != null) ...[
                  Description(reasonText: data.description!),
                  const Spacer()
                ],
                IsFavoriteWidget(isFavorite: data.isFavourite)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class IsFavoriteWidget extends StatelessWidget {
  final bool isFavorite;
  const IsFavoriteWidget({super.key, required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    if (isFavorite) {
      return SizedBox(
        height: 24,
        width: 24,
        child: SvgPicture.asset(GenAssetSvgImages.favorite),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}

class Description extends StatelessWidget {
  final String reasonText;
  const Description({super.key, required this.reasonText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: GenColors.darkGrey),
        ),
        const SizedBox(width: 8),
        Text(reasonText),
      ],
    );
  }
}
