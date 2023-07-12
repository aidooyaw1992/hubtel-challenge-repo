import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubtel_coding_challenge/models/transaction_model.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionLoadingState());

  final List<TransactionModel> _historyList = [
    const TransactionModel(date: "May 24, 2022", info: [
      HistoryInfo(
          type: "Personal",
          amount: "500",
          assetImageUrl: "assets/momo.jpeg",
          status: "Successful",
          name: "Emmanuel Rockson",
          phone: "phone",
          description: "Cool your heart wai",
          time: "14:45PM")
    ])
  ];

  getTransactionHistory() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(TransactionLoadedSuccessState(_historyList));
  }
}
