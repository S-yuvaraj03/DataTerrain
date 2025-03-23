import 'package:dataterrain/core/utili/theme/app_color.dart';
import 'package:flutter/material.dart';

class AppStyle {
  static const TextStyle _baseStyle = TextStyle(
    fontFamily: 'PlusJakartaSans',
    color: AppColor.textPrimary,
  );

  // Font sizes
  static const double fontSize24 = 24.0;
  static const double fontSize16 = 16.0;
  static const double fontSize14 = 14.0;
  static const double fontSize12 = 12.0;

  // Text styles with font sizes
  static final TextStyle styleBold24 = _baseStyle.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: fontSize24,
  );

  static final TextStyle styleNormal24 = _baseStyle.copyWith(
    fontWeight: FontWeight.normal,
    fontSize: fontSize24,
  );

  static final TextStyle styleNormal16 = _baseStyle.copyWith(
    fontWeight: FontWeight.normal,
    fontSize: fontSize16,
  );

  static final TextStyle styleNormal14 = _baseStyle.copyWith(
    fontWeight: FontWeight.normal,
    fontSize: fontSize14,
  );

  static final TextStyle styleNormal12 = _baseStyle.copyWith(
    fontWeight: FontWeight.normal,
    fontSize: fontSize12,
  );

  static final TextStyle styleW400_16 = _baseStyle.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: fontSize16,
  );

  static final TextStyle styleW400_14 = _baseStyle.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: fontSize14,
  );

  static final TextStyle styleW600_16 = _baseStyle.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: fontSize16,
  );

  static final TextStyle styleW600_14 = _baseStyle.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: fontSize14,
  );

  static final TextStyle styleBold16 = _baseStyle.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: fontSize16,
  );

  static final TextStyle styleBold14 = _baseStyle.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: fontSize14,
  );
}
