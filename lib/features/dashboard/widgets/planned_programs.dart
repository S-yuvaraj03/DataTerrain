
import 'package:flutter/material.dart';
import '../../../core/constants/app_text.dart';
import '../../../core/utili/theme/app_color.dart';
import '../../../widgets/app_buttons.dart';
import '../../../widgets/custom_cards.dart';

class PlannedProgramsWidget extends StatelessWidget {
  const PlannedProgramsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadowMorphCard(
      appBarTitle: AppTexts.plannedPrograms,
      actionButton: CustomInkWellButton(
          text: AppTexts.viewAll,
          onPressed: () {},
          bgColor: AppColor.appPriButtonBg,
          textColor: AppColor.textPrimary),
      child: Column(
        children: [
          _buildItem("327", AppTexts.programs, AppColor.tile1),
          _buildItem("120", AppTexts.mentor, AppColor.tile2),
          _buildItem("556", AppTexts.mentee, AppColor.tile3),
        ],
      ),
    );
  }
}

/// Helper function to create shadowed items
Widget _buildItem(String count, String label, Color color) {
  return Row(children: [
    Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        count,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
    const SizedBox(width: 16),
    Text(label),
  ]);
}
