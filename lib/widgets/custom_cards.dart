import 'package:dataterrain/core/utili/theme/app_color.dart';
import 'package:dataterrain/core/utili/theme/app_spacing.dart';
import 'package:flutter/material.dart';

class ShadowMorphCard extends StatelessWidget {
  final String appBarTitle;
  final Widget actionButton; // Custom button passed as child
  final Widget child;
  final Widget? trailing;

  const ShadowMorphCard({
    super.key,
    required this.appBarTitle,
    required this.actionButton,
    required this.child,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // More visible shadow
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(2, 4),
          ),
        ],
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// AppBar-like Row with Title and Custom Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 6,
                      height: 24,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [AppColor.gradient1, AppColor.gradient2],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomLeft,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      appBarTitle,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (trailing != null) ...[
                      const SizedBox(
                        width: AppSpacing.spacing10x,
                      ),
                      trailing!,
                    ],
                  ],
                ),
                actionButton, // Pass any button here
              ],
            ),
            const Divider(),

            /// Child Content Section
            const SizedBox(height: 8),
            child,
          ],
        ),
      ),
    );
  }
}
