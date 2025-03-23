
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constants/app_assets.dart';
import '../../../widgets/drawer.dart';
import '../widgets/planned_programs.dart';
import '../widgets/program_mode_metrices.dart';
import '../widgets/program_status_metrics.dart';
import '../widgets/program_type_metrices.dart';
import '../widgets/top_mentorstable.dart';
import '../widgets/top_programtable.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double Kheight = MediaQuery.of(context).size.height;
    return Scaffold(
      endDrawer: KDrawer(),
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              // Handle tap
            },
            child: ClipOval(
              child: Image.asset(
                AppAssets.avatar,
                width: 40,
                height: 40,
                fit: BoxFit.cover, // Ensures proper scaling
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
              semanticsLabel: 'notification Image',
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
                height: 20,
                width: 20,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 600) {
                  // Wide screen (Tablet/Web) - Row Layout
                  return SizedBox(
                    height: Kheight / 0.80,
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: PlannedProgramsWidget()),
                        Expanded(child: ProgramStatusMetricsWidget()),
                      ],
                    ),
                  );
                } else {
                  // Mobile Layout - Column Layout
                  return const Column(
                    children: [
                      PlannedProgramsWidget(),
                      ProgramStatusMetricsWidget(),
                    ],
                  );
                }
              },
            ),
            const TopProgram(),
            const TopMentors(),
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 600) {
                  // Wide screen (Tablet/Web) - Row Layout
                  return const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: ProgramTypeMetrices()),
                      Expanded(child: ProgramModeMetrices()),
                    ],
                  );
                } else {
                  // Mobile Layout - Column Layout
                  return const Column(
                    children: [ProgramTypeMetrices(), ProgramModeMetrices()],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
