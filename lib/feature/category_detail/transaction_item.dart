import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/constant/app_colors.dart';

class TransactionItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final String date;
  final String amount;
  final String? category;
  final bool isIncome;

  const TransactionItem({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.date,
    required this.amount,
    this.category,
    this.isIncome = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 12, bottom: 8),
      // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Table(
        children: [
          TableRow(children: [
            TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Container(
                  width: 30,
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.secondaryColor,
                  ),
                  child: SvgPicture.asset(
                    iconPath,
                    color: Colors.white,
                  ),
                )),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFF052224),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                      color: AppColors.secondaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: 150,
                  child: Row(
                    children: [
                      Container(
                        width: 1,
                        height: 36,
                        color: AppColors.primaryColor,
                      ),
                      Spacer(),
                      Text(
                        category ?? title,
                        style: const TextStyle(
                          color: Color(0xFF052224),
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 1,
                        height: 36,
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                )),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Text(
                amount,
                style: TextStyle(
                  color: isIncome
                      ? const Color(0xFF052224)
                      : AppColors.secondaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ]),
          //   Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     crossAxisAlignment: CrossAxisAlignment.center, // Đảm bảo tất cả các phần tử căn giữa
          //     children: [
          //       // Icon
          //       Container(
          //         width: 56,
          //         height: 56,
          //         padding: const EdgeInsets.all(12),
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(25),
          //           color: AppColors.secondaryColor,
          //         ),
          //         child: SvgPicture.asset(
          //           iconPath,
          //           color: Colors.white,
          //         ),
          //       ),
          //       const SizedBox(width: 15),
          //
          //       // Nội dung (title + date)
          //       Expanded(
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           mainAxisAlignment: MainAxisAlignment.center, // Canh giữa cho cả title và date
          //           children: [
          //             Text(
          //               title,
          //               style: const TextStyle(
          //                 color: Color(0xFF052224),
          //                 fontSize: 15,
          //                 fontWeight: FontWeight.w500,
          //                 fontFamily: 'Poppins',
          //               ),
          //             ),
          //             Text(
          //               date,
          //               style: const TextStyle(
          //                 color: AppColors.secondaryColor,
          //                 fontSize: 12,
          //                 fontWeight: FontWeight.w600,
          //                 fontFamily: 'Poppins',
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       Container(
          //         width: 1,
          //         height: 36,
          //         color: AppColors.primaryColor,
          //       ),
          //       const SizedBox(width: 20),
          //
          //       // Tiêu đề category hoặc title
          //       Text(
          //         category ?? title, // Hiển thị category nếu có, nếu không thì hiển thị title
          //         style: const TextStyle(
          //           color: Color(0xFF052224),
          //           fontSize: 13,
          //           fontWeight: FontWeight.w300,
          //           fontFamily: 'Poppins',
          //         ),
          //       ),
          //       Container(
          //         width: 1,
          //         height: 36,
          //         color: AppColors.primaryColor,
          //       ),
          //       const SizedBox(width: 20),
          //
          //       // Số tiền (Amount)
          //       Text(
          //         amount,
          //         style: TextStyle(
          //           color: isIncome
          //               ? const Color(0xFF052224)
          //               : AppColors.secondaryColor,
          //           fontSize: 15,
          //           fontWeight: FontWeight.w500,
          //           fontFamily: 'Poppins',
          //         ),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
