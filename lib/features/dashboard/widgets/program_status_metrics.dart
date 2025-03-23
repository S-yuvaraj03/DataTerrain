
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_text.dart';
import '../../../core/utili/theme/app_color.dart';
import '../../../widgets/app_buttons.dart';
import '../../../widgets/custom_cards.dart';

class ProgramStatusMetricsWidget extends StatelessWidget {
  const ProgramStatusMetricsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadowMorphCard(
      appBarTitle: AppTexts.programStatusMetrics,
      actionButton: CustomInkWellButton(
        text: AppTexts.month,
        onPressed: () {},
        bgColor: AppColor.appSecButtonBg,
        textColor: AppColor.textSecondary,
        icon: AppAssets.downArrow,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 250, // Ensure fixed height for clarity
              child: BarChart(
                BarChartData(
                  maxY: 50, // Set limit to 50 for correct scaling
                  barGroups: _getBarGroups(),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30, // More space for labels
                        interval: 10,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            "${value.toInt()}",
                            style: const TextStyle(fontSize: 12),
                          );
                        },
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          switch (value.toInt()) {
                            case 0:
                              return const Text(AppTexts.jan);
                            case 1:
                              return const Text(AppTexts.feb);
                            case 2:
                              return const Text(AppTexts.mar);
                            default:
                              return const Text("");
                          }
                        },
                      ),
                    ),
                    rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                  ),
                  borderData: FlBorderData(
                    border: const Border(
                      bottom: BorderSide(
                        width: 1,
                        color: AppColor.appPriButtonBg,
                      ),
                      left: BorderSide(
                        width: 1,
                        color: AppColor.appPriButtonBg,
                      ),
                    ),
                  ),
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                    horizontalInterval: 10,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: Colors.grey.shade300,
                        strokeWidth: 1,
                      );
                    },
                  ),
                  barTouchData: BarTouchData(enabled: true),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _legendItem(AppColor.barchart3, AppTexts.totalPrograms),
                const SizedBox(width: 12),
                _legendItem(AppColor.barchart2, AppTexts.active),
                const SizedBox(width: 12),
                _legendItem(AppColor.barchart1, AppTexts.completed),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<BarChartGroupData> _getBarGroups() {
    return [
      _generateBarGroup(0, [20, 30, 40]), // Jan
      _generateBarGroup(1, [30, 40, 50]), // Feb
      _generateBarGroup(2, [25, 35, 45]), // Mar
    ];
  }

  BarChartGroupData _generateBarGroup(int x, List<double> values) {
    List<Color> colors = [
      AppColor.barchart1,
      AppColor.barchart2,
      AppColor.barchart3,
    ];

    return BarChartGroupData(
      x: x,
      barRods: List.generate(
        values.length,
        (index) => BarChartRodData(
          toY: values[index],
          color: colors[index],
          width: 12,
          borderRadius: BorderRadius.circular(0),
        ),
      ),
      barsSpace: 6,
    );
  }

  Widget _legendItem(Color color, String text) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        const SizedBox(width: 4),
        Text(text),
      ],
    );
  }
}
