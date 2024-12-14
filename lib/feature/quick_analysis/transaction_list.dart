
import 'package:flutter/material.dart';

import '../../core/constant/app_colors.dart';
import '../transaction/transaction_item.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionItem(
          iconPath: 'assets/icons/salary.svg',
          title: 'Salary',
          date: '18:27 - April 30',
          amount: '\$4,000.00',
          isIncome: true,
        ),
        TransactionItem(
          iconPath: 'assets/icons/groceries.svg',
          title: 'Groceries',
          date: '17:00 - April 24',
          amount: '-\$100.00',
          category: 'Pantry',
        ),
        TransactionItem(
          iconPath: 'assets/icons/rent.svg',
          title: 'Rent',
          date: '8:30 - April 15',
          amount: '-\$674.40',
          category: 'Rent',
        ),
        TransactionItem(
          iconPath: 'assets/icons/transport.svg',
          title: 'Transport',
          date: '9:30 - April 08',
          amount: '-\$4.13',
          category: 'Fuel',
        ),
      ],
    );
  }

  Widget _buildTransactionItem({
    required IconData icon,
    required String title,
    required String date,
    required String category,
    required String amount,
    required bool isIncome,
  }) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFFDFF7E2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: Color(0xFF093030)),
        ),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF052224),
                ),
              ),
              SizedBox(height: 4),
              Text(
                date,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.secondaryColor,
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              amount,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: isIncome ? Color(0xFF093030) : AppColors.secondaryColor,
              ),
            ),
            SizedBox(height: 4),
            Text(
              category,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: Color(0xFF052224),
              ),
            ),
          ],
        ),
      ],
    );
  }
}


// class TransactionList extends StatelessWidget {
//   final TransactionService _transactionService = TransactionService();
//
//   TransactionList({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final transactions = _transactionService.getRecentTransactions();
//
//     return Padding(
//       padding: const EdgeInsets.all(20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Recent Transactions',
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//               color: Color(0xFF093030),
//             ),
//           ),
//           SizedBox(height: 20),
//           ListView.separated(
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             itemCount: transactions.length,
//             separatorBuilder: (context, index) => SizedBox(height: 20),
//             itemBuilder: (context, index) {
//               return _buildTransactionItem(transactions[index]);
//             },
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildTransactionItem(Transaction transaction) {
//     return Row(
//       children: [
//         Container(
//           padding: EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             color: Color(0xFFDFF7E2),
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Icon(
//             _getIconForCategory(transaction.category),
//             color: Color(0xFF093030),
//           ),
//         ),
//         SizedBox(width: 15),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 transaction.title,
//                 style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.w500,
//                   color: Color(0xFF052224),
//                 ),
//               ),
//               SizedBox(height: 4),
//               Text(
//                 DateFormatter.formatTransactionDate(transaction.date),
//                 style: TextStyle(
//                   fontSize: 12,
//                   fontWeight: FontWeight.w600,
//                   color: AppColors.secondaryColor,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             Text(
//               DateFormatter.formatCurrency(transaction.amount),
//               style: TextStyle(
//                 fontSize: 15,
//                 fontWeight: FontWeight.w500,
//                 color: transaction.isIncome ? Color(0xFF093030) : AppColors.secondaryColor,
//               ),
//             ),
//             SizedBox(height: 4),
//             Text(
//               transaction.category,
//               style: TextStyle(
//                 fontSize: 13,
//                 fontWeight: FontWeight.w300,
//                 color: Color(0xFF052224),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
//
//   IconData _getIconForCategory(String category) {
//     switch (category.toLowerCase()) {
//       case 'monthly':
//         return Icons.attach_money;
//       case 'pantry':
//         return Icons.shopping_cart;
//       case 'rent':
//         return Icons.home;
//       default:
//         return Icons.category;
//     }
//   }
// }