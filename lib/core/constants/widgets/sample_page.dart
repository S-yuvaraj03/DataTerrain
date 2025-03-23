import 'package:dataterrain/core/constants/app_assets.dart';
import 'package:dataterrain/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../widgets/drawer.dart';
import '../app_text.dart';

class UnderMaintenance extends StatelessWidget {
  const UnderMaintenance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const KDrawer(),
      backgroundColor: Colors.white70,
      appBar: const KAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppAssets.programs,
            height: 50,
            width: 50,
          ),
          const Center(child: Text(AppTexts.comingsoon)),
        ],
      ),
    );
  }
}
