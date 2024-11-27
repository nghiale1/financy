
import '../model/transaction.dart';

class TransactionService {
  List<Transaction> getRecentTransactions() {
    // In a real app, this would fetch data from an API or local database
    return [
      Transaction(
        id: '1',
        title: 'Salary',
        amount: 4000.00,
        date: DateTime(2023, 4, 30, 18, 27),
        category: 'Monthly',
        isIncome: true,
      ),
      Transaction(
        id: '2',
        title: 'Groceries',
        amount: 100.00,
        date: DateTime(2023, 4, 24, 17, 0),
        category: 'Pantry',
        isIncome: false,
      ),
      Transaction(
        id: '3',
        title: 'Rent',
        amount: 674.40,
        date: DateTime(2023, 4, 15, 8, 30),
        category: 'Rent',
        isIncome: false,
      ),
    ];
  }
}