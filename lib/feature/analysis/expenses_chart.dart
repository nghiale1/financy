import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../core/constant/app_colors.dart';

class ExpensesChart extends StatelessWidget {
  const ExpensesChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFDFF7E2),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'April Expenses',
                style: TextStyle(
                  color: Color(0xFF093030),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
              Row(
                children: [
                  Icon(Icons.calendar_today, color: Color(0xFF093030)),
                  SizedBox(width: 10),
                  Icon(Icons.more_vert, color: Color(0xFF093030)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 200,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 15000,
                barTouchData: BarTouchData(enabled: false),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        String title = '';
                        switch (value.toInt()) {
                          case 0:
                            title = '1st Week';
                            break;
                          case 1:
                            title = '2nd Week';
                            break;
                          case 2:
                            title = '3rd Week';
                            break;
                          case 3:
                            title = '4th Week';
                            break;
                          default:
                            title = '';
                        }
                        return Text(
                          title,
                          style: const TextStyle(
                            color: Color(0xFF0E3E3E),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        );
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      String title = '';
                      switch (value.toInt()) {
                        case 0:
                          title = '0';
                          break;
                        case 5000:
                          title = '5k';
                          break;
                        case 10000:
                          title = '10k';
                          break;
                        case 15000:
                          title = '15k';
                          break;
                        default:
                          title = '';
                      }
                      return Text(
                        title,
                        style: const TextStyle(
                          color: Color(0xFF0E3E3E),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      );
                    },
                  )),
                ),
                borderData: FlBorderData(show: false),
                barGroups: [
                  BarChartGroupData(
                    x: 0,
                    barRods: [
                      BarChartRodData(
                        toY: 3000,
                        color: AppColors.primaryColor,
                      ),
                      BarChartRodData(
                          toY: 5000, color: AppColors.secondaryColor),
                    ],
                  ),
                  BarChartGroupData(
                    x: 1,
                    barRods: [
                      BarChartRodData(toY: 3000, color: AppColors.primaryColor),
                      BarChartRodData(
                          toY: 10000, color: AppColors.secondaryColor),
                    ],
                  ),
                  BarChartGroupData(
                    x: 2,
                    barRods: [
                      BarChartRodData(toY: 6000, color: AppColors.primaryColor),
                      BarChartRodData(
                          toY: 15000, color: AppColors.secondaryColor),
                    ],
                  ),
                  BarChartGroupData(
                    x: 3,
                    barRods: [
                      BarChartRodData(
                          toY: 12000, color: AppColors.primaryColor),
                      BarChartRodData(
                          toY: 9000, color: AppColors.secondaryColor),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
