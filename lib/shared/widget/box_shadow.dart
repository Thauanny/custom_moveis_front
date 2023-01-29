import 'package:customoveis/shared/config/colors.dart';
import 'package:flutter/material.dart';

import '../config/sizes.dart';

const BoxShadow primaryBoxShadow = BoxShadow(
  color: Colors.white,
  offset: Offset(-small_4, -small_4),
  spreadRadius: 1,
  blurRadius: 15,
);
BoxShadow secondaryBoxShadow = BoxShadow(
  color: boxShadowPrimary.withOpacity(0.6),
  offset: const Offset(small_4, small_4),
  spreadRadius: 1,
  blurRadius: 15,
);
