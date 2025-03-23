import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_text.dart';
import '../../../core/utili/theme/app_color.dart';
import '../../../widgets/app_buttons.dart';
import '../../../widgets/custom_cards.dart';
import '../../../widgets/reusable_data_table.dart';

class TopMentors extends StatefulWidget {
  const TopMentors({super.key});

  @override
  State<TopMentors> createState() => _TopMentorsState();
}

class _TopMentorsState extends State<TopMentors> {
  final ScrollController _scrollController = ScrollController();
  double scrollProgress = 0.0;

  final List<String> columnNames = [
    'Mentor Name',
    'Program',
    'Email',
    'Rating',
    'View'
  ];

  final List<Map<String, dynamic>> tableData = [
    {
      'Mentor Name': 'Jonh kennedy',
      'Program': 'Teaching Program',
      'Email': 'johnk@gmail.com',
      'Rating': '⭐ 4.9',
      'View': ''
    },
    {
      'Mentor Name': 'Jenifer Smith',
      'Program': 'Teaching Program',
      'Email': 'jenny@gmail.com',
      'Rating': '⭐ 4.8',
      'View': ''
    },
    {
      'Mentor Name': 'Thomas shelby',
      'Program': 'Teaching Program',
      'Email': 'thomas@gmail.com',
      'Rating': '⭐ 4.7',
      'View': ''
    },
    {
      'Mentor Name': 'John Miller',
      'Program': 'Teaching Program',
      'Email': 'miller@gmail.com',
      'Rating': '⭐ 4.5',
      'View': ''
    },
    {
      'Mentor Name': 'Jason Morgan ',
      'Program': 'Teaching Program',
      'Email': 'jason@gmail.com',
      'Rating': '⭐ 4.8',
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
        appBarTitle: AppTexts.topMentors,
        trailing: Container(
          child: SvgPicture.asset(
            AppAssets.link,
            height: 24,
            width: 24,
          ),
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ReusableDataTable(
              columnNames: columnNames,
              data: tableData,
              scrollController: _scrollController,
            ),
            // Custom Scroll Indicator
            Container(
              // width: indicatorWidth,
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
          ]),
        ));
  }
}
