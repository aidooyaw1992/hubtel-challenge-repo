part of 'transaction_cubit.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();
  @override
  List<Object> get props => [];
}

class TransactionLoadingState extends TransactionState {}

class TransactionLoadedSuccessState extends TransactionState {
  final List<TransactionModel> results;

 const TransactionLoadedSuccessState(this.results);

}
