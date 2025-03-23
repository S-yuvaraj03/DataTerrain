import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/app_text.dart';
import '../../../core/utili/theme/app_color.dart';
import '../../../widgets/program_metrics_card.dart';


class ProgramModeMetrices extends StatelessWidget {
  const ProgramModeMetrices({super.key});

  @override
  Widget build(BuildContext context) {
    return ProgramMetricsCard(
      title: AppTexts.programModeMetrics,
      totalPrograms: "96",
      chartSections: [
        PieChartSectionData(value: 50, color: AppColor.piechart4, title: '', radius: 30),
        PieChartSectionData(value: 36, color: AppColor.piechart3, title: '', radius: 30),
      ],
      labels: const [
        {'color': AppColor.piechart3, 'label': 'Virtual', 'value': '36'},
        {'color': AppColor.piechart4, 'label': 'Physical', 'value': '50'},
      ],
    );
  }
}