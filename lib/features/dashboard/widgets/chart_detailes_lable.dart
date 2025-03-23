import 'package:dataterrain/core/utili/theme/app_spacing.dart';
import 'package:dataterrain/core/utili/theme/app_styles.dart';
import 'package:flutter/material.dart';

class ChartLable extends StatelessWidget {
  final String lable;
  final String value;
  final Color colorCode;
  ChartLable({
    super.key,
    required this.colorCode,
    required this.lable,
    required this.value,
  });

  final AppStyle style = AppStyle();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: colorCode,
          ),
        ),
        const SizedBox(
          width: AppSpacing.spacing10x,
        ),
        Text(
          lable,
          style: style.stylew400,
        ),
        const SizedBox(
          width: AppSpacing.spacing20x,
        ),
        Text(
          value,
          style: style.styleBold,
        ),
      ],
    );
  }
}
