
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_text.dart';
import '../../../core/utili/theme/app_color.dart';
import '../../../widgets/program_metrics_card.dart';

class ProgramTypeMetrices extends StatelessWidget {
  const ProgramTypeMetrices({super.key});

  @override
  Widget build(BuildContext context) {
    return ProgramMetricsCard(
      title: AppTexts.programTypeMetrics,
      totalPrograms: "94",
      chartSections: [
        PieChartSectionData(value: 54, color: AppColor.piechart1, title: '', radius: 30),
        PieChartSectionData(value: 40, color: AppColor.piechart2, title: '', radius: 30),
      ],
      labels: const [
        {'color': AppColor.piechart2, 'label': 'Premium', 'value': '40'},
        {'color': AppColor.piechart1, 'label': 'Free', 'value': '54'},
      ],
    );
  }
}