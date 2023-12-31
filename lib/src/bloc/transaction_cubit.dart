import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubtel_coding_challenge/src/models/transaction_model.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionLoadingState());

  final List<TransactionModel> _historyList = [
    const TransactionModel(date: "May 24, 2022", info: [
      HistoryInfo(
          type: "Personal",
          paymentMode: "momo",
          amount: "500",
          assetImageUrl: "assets/momo.jpeg",
          status: "Successful",
          firstName: "Emmanuel Rockson",
          secondName: "Kwabena Uncle Ebo",
          phone: "0241234567",
          description: "Cool your heart wai",
          isFavourite: true,
          time: "14:45PM"),
      HistoryInfo(
          type: "Personal",
          amount: "500",
          paymentMode: "bank",
          bankName: "Absa Bank",
          assetImageUrl: "assets/absa.jpeg",
          status: "Failed",
          firstName: "Emmanuel Rockson",
          phone: "0241234567",
          isFavourite: true,
          // description: "Cool your heart wai",
          time: "14:45PM")
    ]),
    const TransactionModel(date: "May 24, 2022", info: [
      HistoryInfo(
          type: "Personal",
          paymentMode: "momo",
          amount: "500",
          assetImageUrl: "assets/momo.jpeg",
          status: "Successful",
          firstName: "Emmanuel Rockson",
          phone: "0241234567",
          description: "Cool your heart wai",
          isFavourite: true,
          time: "14:45PM"),
      HistoryInfo(
          type: "Personal",
          paymentMode: "momo",
          amount: "500",
          assetImageUrl: "assets/momo.jpeg",
          status: "Successful",
          firstName: "Emmanuel Rockson",
          phone: "0241234567",
          description: "Cool your heart wai",
          isFavourite: true,
          time: "14:45PM"),
    ])
  ];

  getTransactionHistory() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(TransactionLoadedSuccessState(_historyList));
  }
}
