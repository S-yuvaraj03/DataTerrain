import 'package:dataterrain/core/constants/app_assets.dart';
import 'package:dataterrain/core/constants/app_text.dart';
import 'package:dataterrain/core/constants/size_ulti.dart';
import 'package:dataterrain/core/utili/theme/app_spacing.dart';
import 'package:dataterrain/widgets/drawer_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/utili/theme/app_styles.dart';

class KDrawer extends StatelessWidget {
  const KDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: SizedBox(
        height: AppSize(context).h * 0.85,
        child: Drawer(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0), bottomLeft: Radius.circular(0)),
          ),
          elevation: 16,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Admin',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0047BA), // Custom blue
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 7,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const KDrawerHeader(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.spacing20x),
                          height: 1,
                          width: double.infinity,
                          color: Colors.black12,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Column(
                            children: [
                              _buildMenuItem(
                                  AppAssets.schedule, AppTexts.shedular),
                              _buildMenuItem(
                                  AppAssets.timesheet, AppTexts.timesheet),
                              _buildMenuItem(
                                  AppAssets.discussion, AppTexts.discussions),
                              _buildMenuItem(
                                  AppAssets.reports, AppTexts.reports),
                              _buildMenuItem(
                                  AppAssets.starMessage, AppTexts.certificate),
                              _buildMenuItem(
                                  AppAssets.medal, AppTexts.certificate),
                              _buildMenuItem(
                                  AppAssets.timesheet, AppTexts.feed),
                              _buildMenuItem(
                                  AppAssets.analytics, AppTexts.analytics),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(String svgimage, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        children: [
          SvgPicture.asset(
            svgimage,
            semanticsLabel: 'My SVG Image',
            height: 24,
            width: 24,
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: AppStyle.styleNormal16,
          ),
        ],
      ),
    );
  }
}
