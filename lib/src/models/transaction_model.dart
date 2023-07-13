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
    required final String name,
    required final String phone,
    required final String description,
    required final String type,
    required final String amount,
    required final String time,
    required final String assetImageUrl,
    @Default(false) final bool isFavourite,
  }) = _HistoryInfo;
}
