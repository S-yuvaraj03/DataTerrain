import 'package:dataterrain/core/constants/size_ulti.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets/bottom_navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSize(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'PlusJakartaSans',
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white70, // Status bar color
            statusBarIconBrightness: Brightness.light, // Status bar icons
            systemNavigationBarColor: Colors.white, // Navigation bar
            systemNavigationBarIconBrightness: Brightness.light,
          ),
        ),
      ),
      home: const BottomNavigator(),
    );
  }
}
