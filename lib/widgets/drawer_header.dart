import 'package:dataterrain/core/constants/app_assets.dart';
import 'package:dataterrain/core/utili/theme/app_color.dart';
import 'package:dataterrain/core/utili/theme/app_styles.dart';
import 'package:flutter/material.dart';

class KDrawerHeader extends StatelessWidget {
  const KDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white,
      height: 200,
      width: 300,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Color(0xFF0047BA),
            child: CircleAvatar(
              radius: 42,
              backgroundImage: AssetImage(AppAssets.avatar),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'John Doe',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 4),
          Text(
            'Mentor',
            style: AppStyle().styleNormal,
          ),
        ],
      ),
    );
  }
}
