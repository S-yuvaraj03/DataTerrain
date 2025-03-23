import 'package:dataterrain/core/utili/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppStyle {
  static const TextStyle _style = TextStyle(
    fontFamily: 'PlusJakartaSans',
    color: AppColor.textPrimary,
  );

  final TextStyle styleNormal = _style.copyWith(
    fontWeight: FontWeight.normal,
  );
  final TextStyle stylew400 = _style.copyWith(
    fontWeight: FontWeight.w400,
  );
  final TextStyle stylew600 = _style.copyWith(
    fontWeight: FontWeight.w600,
  );
  final TextStyle stylew300 = _style.copyWith(
    fontWeight: FontWeight.w300,
  );
  final TextStyle styleBold = _style.copyWith(
    fontWeight: FontWeight.bold,
  );
  static const double fontSize = 16.0;
  final double fontSizeSmall = 12.0;
}
