import 'package:intl/intl.dart';

class DateFormatter {
  static String formatTransactionDate(DateTime date) {
    return '${DateFormat('HH:mm').format(date)} - ${DateFormat('MMMM d').format(date)}';
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(symbol: '\$', decimalDigits: 2).format(amount);
  }
}