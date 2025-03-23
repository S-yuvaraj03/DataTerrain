import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../core/utili/theme/app_color.dart';
import '../core/utili/theme/app_spacing.dart';

class CustomInkWellButton extends StatelessWidget {
  final String text;
  final String? icon;
  final VoidCallback onPressed;
  final Color textColor;
  final Color bgColor;

  const CustomInkWellButton({
    super.key,
    required this.text,
    this.icon,
    required this.onPressed,
    this.textColor = AppColor.textPrimary,
    this.bgColor = AppColor.appPriButtonBg,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(10),
      splashColor: Colors.white24,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
            ),
            if (icon != null) ...[
              const SizedBox(width: 8),
              Padding(
                padding: const EdgeInsets.only(
                  top: AppSpacing.spacing5x,
                ),
                child: SvgPicture.asset(
                  icon!, // Pass the SVG file path instead of IconData
                  height: 7, // Adjust size as needed
                  width: 9,
                  colorFilter: ColorFilter.mode(
                      textColor, BlendMode.srcIn), // Apply text color
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
