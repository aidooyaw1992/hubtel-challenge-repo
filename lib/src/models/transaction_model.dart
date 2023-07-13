import 'package:freezed_annotation/freezed_annotation.dart';
part 'transaction_model.freezed.dart';

@freezed
class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    required final String date,
    required final List<HistoryInfo> info,
  }) = _TransactionModel;
}

@freezed
class HistoryInfo with _$HistoryInfo {
  const factory HistoryInfo({
    required final String status,
    required final String firstName,
    required final String paymentMode,
    final String? bankName,
    final String? secondName,
    required final String phone,
     final String? description,
     @Default("Other") String? type,
    required final String amount,
    required final String time,
    required final String assetImageUrl,
    @Default(false) final bool isFavourite,
  }) = _HistoryInfo;
}
