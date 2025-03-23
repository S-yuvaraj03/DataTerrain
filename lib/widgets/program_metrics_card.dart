import 'package:dataterrain/core/constants/app_text.dart';
import 'package:dataterrain/core/utili/theme/app_color.dart';
import 'package:dataterrain/widgets/app_buttons.dart';
import 'package:dataterrain/widgets/custom_cards.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../core/utili/theme/app_spacing.dart';
import '../core/constants/app_assets.dart';
import '../core/utili/theme/app_styles.dart';
import '../features/dashboard/widgets/chart_detailes_lable.dart';

class ProgramMetricsCard extends StatelessWidget {
  final String title;
  final List<PieChartSectionData> chartSections;
  final String totalPrograms;
  final List<Map<String, dynamic>> labels;

  const ProgramMetricsCard({
    super.key,
    required this.title,
    required this.chartSections,
    required this.totalPrograms,
    required this.labels,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowMorphCard(
      appBarTitle: title,
      actionButton: CustomInkWellButton(
        text: AppTexts.month,
        onPressed: () {},
        bgColor: AppColor.appSecButtonBg,
        textColor: AppColor.textSecondary,
        icon: AppAssets.downArrow,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 250,
            child: Stack(
              alignment: Alignment.center,
              children: [
                PieChart(
                  PieChartData(
                    sections: chartSections,
                    centerSpaceRadius: 90,
                    sectionsSpace: 0,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      AppTexts.totalPrograms,
                      style: AppStyle.styleNormal14
                    ),
                    Text(
                      totalPrograms,
                      style: AppStyle.styleNormal24
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: labels.map((label) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.spacing15x),
                child: ChartLable(
                  colorCode: label['color'],
                  lable: label['label'],
                  value: label['value'],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
