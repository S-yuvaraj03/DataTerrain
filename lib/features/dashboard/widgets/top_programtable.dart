import 'package:dataterrain/core/constants/app_text.dart';
import 'package:dataterrain/core/utili/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:dataterrain/widgets/custom_cards.dart';
import 'package:dataterrain/widgets/app_buttons.dart';

import '../../../core/constants/app_assets.dart';
import '../../../widgets/reusable_data_table.dart';

class TopProgram extends StatefulWidget {
  const TopProgram({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TopProgramState createState() => _TopProgramState();
}

class _TopProgramState extends State<TopProgram> {
  final ScrollController _scrollController = ScrollController();
  double scrollProgress = 0.0;

  final List<String> columnNames = [
    'Program Name',
    'Category',
    'Created By',
    'Rating',
    'View'
  ];

  final List<Map<String, dynamic>> tableData = [
    {
      'Program Name': 'Leadership Growth',
      'Category': 'Engineer',
      'Created By': '(202) 555-0191',
      'Rating': 'contact@creativehub.com',
      'View': ''
    },
    {
      'Program Name': 'Tech Mentorship',
      'Category': 'Doctor',
      'Created By': '(303) 555-0123',
      'Rating': 'support@innovativeideas.com',
      'View': ''
    },
    {
      'Program Name': 'Career Guidance',
      'Category': 'Artist',
      'Created By': '(404) 555-0145',
      'Rating': 'info@techsolutions.com',
      'View': ''
    },
    {
      'Program Name': 'Business Skills',
      'Category': 'Chef',
      'Created By': '(505) 555-0167',
      'Rating': 'hello@designworld.com',
      'View': ''
    },
    {
      'Program Name': 'Soft Skills',
      'Category': 'Teacher',
      'Created By': '(606) 555-0189',
      'Rating': 'team@futuretech.com',
      'View': ''
    },
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateScrollIndicator);
  }

  void _updateScrollIndicator() {
    if (_scrollController.hasClients) {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double currentScroll = _scrollController.offset;
      setState(() {
        scrollProgress = (currentScroll / maxScroll).clamp(0.0, 1.0);
      });
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_updateScrollIndicator);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double indicatorWidth = screenWidth * 0.8; // 80% of screen width
    double indicatorStep =
        indicatorWidth / 5; // Divides into 5 steps (20% each)

    return ShadowMorphCard(
      appBarTitle: AppTexts.topPrograms,
      trailing: SizedBox(
        height: 25,
        width: 25,
        child: Image.asset(AppAssets.link),
      ),
      actionButton: Align(
        alignment: Alignment.topRight,
        child: CustomInkWellButton(
          text: AppTexts.viewAll,
          onPressed: () {},
          bgColor: AppColor.appPriButtonBg,
          textColor: AppColor.textPrimary,
        ),
      ),
      child: SizedBox(
        height: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReusableDataTable(
              columnNames: columnNames,
              data: tableData,
              scrollController: _scrollController,
            ),

            // Custom Scroll Indicator
            Container(
              height: 4, // Thin line for the indicator track
              decoration: BoxDecoration(
                color: Colors.grey.shade300, // Light grey background
                borderRadius: BorderRadius.circular(4),
              ),
              child: Stack(
                children: [
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 200),
                    left: scrollProgress *
                        (indicatorWidth - indicatorStep), // Moves in steps
                    child: Container(
                      width: screenWidth < 600
                          ? indicatorStep + 15
                          : indicatorStep + 150, // 4-inch wide moving bar
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.black, // Active indicator color
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
