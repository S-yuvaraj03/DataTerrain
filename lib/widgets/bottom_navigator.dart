
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/constants/app_assets.dart';
import '../core/constants/widgets/sample_page.dart';
import '../features/dashboard/page/dashboard_view.dart';




class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const DashboardScreen(),
    const UnderMaintenance(),
    const UnderMaintenance(),
    const UnderMaintenance(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.dashboard,
              semanticsLabel: 'Dashboard Icon',
              height: 15,
              width: 15,
              color: _selectedIndex == 0 ? Colors.blueAccent : Colors.black,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.programs,
              semanticsLabel: 'Programs Icon',
              height: 15,
              width: 15,
              color: _selectedIndex == 1 ? Colors.blueAccent : Colors.black,
            ),
            label: 'Programs',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.user,
              semanticsLabel: 'Users Icon',
              height: 15,
              width: 15,
              color: _selectedIndex == 2 ? Colors.blueAccent : Colors.black,
            ),
            label: 'Users',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.request,
              semanticsLabel: 'requests Icon',
              height: 15,
              width: 15,
              color: _selectedIndex == 3 ? Colors.blueAccent : Colors.black,
            ),
            label: 'Requests',
          ),
        ],
      ),
    );
  }
}
