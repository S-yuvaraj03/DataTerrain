import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/constants/app_assets.dart';

class KAppBar extends StatelessWidget implements PreferredSizeWidget {
  const KAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            // Handle tap
          },
          child: const CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xFF0047BA),
            child: CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage(AppAssets.avatar),
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            AppAssets.search,
            semanticsLabel: 'Search Image',
            height: 36,
            width: 36,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            AppAssets.notification,
            semanticsLabel: 'Notification Image',
            height: 36,
            width: 36,
          ),
          onPressed: () {},
        ),
        Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            icon: SvgPicture.asset(
              AppAssets.menu,
              semanticsLabel: 'Menu Image',
              height: 16,
              width: 24,
            ),
          ),
        ),
      ],
    );
  }

  // Implement preferredSize for AppBar
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
