import '../models/transaction_model.dart';

class TransactionController {
  final List<TransactionModel> transactions = [
    TransactionModel(
      id: 'T001',
      date: '2023-10-01',
      amount: 'Rp 500.000',
      status: 'Completed',
    ),
    TransactionModel(
      id: 'T002',
      date: '2023-10-05',
      amount: 'Rp 300.000',
      status: 'Pending',
    ),
  ];

  List<TransactionModel> getTransactions() {
    return transactions;
  }

  void filterTransactions(String status) {
    // Logic for filtering transactions
    print('Filtered transactions by status: $status');
  }
}
