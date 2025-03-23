import 'package:flutter/material.dart';

class AppSize {
  static AppSize? _instance;
  late BuildContext context;

  AppSize._internal();

  factory AppSize(BuildContext context) {
    _instance ??= AppSize._internal();
    _instance!.context = context;
    return _instance!;
  }

  double get h {
    return MediaQuery.of(context).size.height;
  }

  double get w {
    return MediaQuery.of(context).size.width;
  }
}
